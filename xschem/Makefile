IP_FILES     := $(wildcard ip_*.sch)
LVS_FILES    := $(IP_FILES:%.sch=lvs/%.lvs.spice)
DOC_FILES    := $(IP_FILES:%.sch=docs/%.png)
PARAX_FILES  := $(IP_FILES:%.sch=parax/%.sim.spice)

TB_FILES     := $(wildcard tb_*.sch)
SPICE_FILES  := $(TB_FILES:%.sch=simulation/%.spice)
RAW_FILES    := $(TB_FILES:%.sch=simulation/%.raw)
HTML_FILES   := $(TB_FILES:%.sch=test/%.html)
MAGIC_RC     := $(PDK_ROOT)/gf180mcuD/libs.tech/magic/gf180mcuD.magicrc

.PHONY: cleansim cleanlvs cleanparax

## LVS Netlist Generation
cleanlvs:
	rm -f $(LVS_FILES)

lvs: $(LVS_FILES)
	sed -i "s/area='13.5u \* 13.5u '/area=0.16125n/" lvs/ip_pixel_nd2ps.lvs.spice
	cp lvs/ip_pixel_nd2ps.lvs.spice lvs/ip_pixel_nd2ps_dummy.lvs.spice
	sed -i 's/ip_pixel_nd2ps/ip_pixel_nd2ps_dummy/g' lvs/ip_pixel_nd2ps_dummy.lvs.spice

lvs/%.lvs.spice: %.sch
	xschem -x -q $< --command "set lvs_netlist 0; set top_is_subckt 1; xschem netlist -file $*.lvs.spice"
	mv simulation/$*.lvs.spice lvs/$*.lvs.spice

## Parax Simulation Generation
cleanparax:
	rm -f ./parax/*.spice
	rm -f ./parax/*.sim

parax: $(PARAX_FILES)
		
parax/%.sim.spice: ../mag/%.mag
	cd ../mag && magic -rcfile $(MAGIC_RC) -noconsole -dnull tcl/extract_for_sim.tcl $*
	cd ../mag && rm -f $*.ext
	mv ../mag/$*.sim.spice ./parax
	mv ../mag/$*_parax.sim ./parax
	rm -f ../mag/$*_parax.res.ext
	rm -f ../mag/$*_parax.ext
	rm -f ../mag/$*_parax.nodes


## Simulation and Test Generation
simulation/%.spice: %.sch 
	xschem -x -q $< --command "set lvs_netlist 0; set top_is_subckt 0; xschem netlist -file $*.spice"

simulation/%.raw: simulation/%.spice
	cd simulation && ngspice -b -r $(notdir $@) $(notdir $<)

test: $(HTML_FILES)

test/%.html: simulation/%.raw
	pip install pytest-html
	cd test && pytest $*.py --html=$(notdir $@) --self-contained-html --tb=no
	cp test/$*.png docs/

cleansim:
	rm -f $(RAW_FILES)
	rm -f $(SPICE_FILES)
	rm -f test/*.html
	rm -f test/*.png


## Documentation Picture Generation
cleandocs:
	rm -f docs/ip*.png

docs: $(DOC_FILES)

docs/%.png: %.sch
	xschem -q $< --command "xschem zoom_full; xschem print png docs/$*.png"
