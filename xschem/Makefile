IP_FILES     := $(wildcard ip_*.sch)
LVS_FILES    := $(IP_FILES:%.sch=simulation/%.lvs.spice)
TB_FILES     := $(wildcard tb_*.sch)
SPICE_FILES  := $(TB_FILES:%.sch=simulation/%.spice)
RAW_FILES    := $(TB_FILES:%.sch=simulation/%.raw)

.PHONY: all clean

lvs: $(LVS_FILES)
	sed -i "s/area='13.5u \* 13.5u '/area=0.166n/" simulation/ip_pixel_nd2ps.lvs.spice
	cp simulation/ip_pixel_nd2ps.lvs.spice simulation/ip_pixel_nd2ps_dummy.lvs.spice

simulation/%.lvs.spice: %.sch
	xschem -x -q $< --command "set lvs_netlist 0; set top_is_subckt 1; xschem netlist -file $*.lvs.spice"

simulation/%.spice: %.sch
	xschem -x -q $< --command "set lvs_netlist 0; set top_is_subckt 0; xschem netlist -file $*.spice"

simulation/%.raw: simulation/%.spice
	cd simulation && ngspice -b -r $(notdir $@) $(notdir $<)

test/%.html: simulation/%.raw
	pip install pytest-html
	cd test && pytest $*.py --html=$(notdir $@) --self-contained-html --tb=no

clean:
	rm -f $(LVS_FILES)
	rm -f $(RAW_FILES)
	rm -f $(SPICE_FILES)
