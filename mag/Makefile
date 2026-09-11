PROJECT_NAME ?= tt_um_baal86_openschnapp
MAGIC_RC := $(PDK_ROOT)/gf180mcuD/libs.tech/magic/gf180mcuD.magicrc
TEMPLATE_FILE := tt_analog_1x2.def

.PHONY: gdslvs lvs magic start png

png:
	klayout -b -r tcl/gds2png.py -rd gdsfile=../gds/tt_um_baal86_openschnapp.gds -rd output=temp.png
	cp temp.png ../docs/snapshot.png
	rm -f temp.png

magic:
	magic -rcfile $(MAGIC_RC) $(PROJECT_NAME).mag

#start: $(TEMPLATE_FILE)
#	magic -rcfile $(MAGIC_RC) -noconsole -dnull tcl/tt-analog-draw.tcl $(TEMPLATE_FILE) $(PROJECT_NAME)

%.lvs.spice: %.mag
	magic -rcfile $(MAGIC_RC) -noconsole -dnull tcl/extract_for_lvs.tcl $*
	rm -f *.ext

$(PROJECT_NAME).gds.lvs.spice: ../gds/$(PROJECT_NAME).gds
	magic -rcfile $(MAGIC_RC) -noconsole -dnull tcl/extract_for_lvs.tcl $<
	mv ../gds/$(PROJECT_NAME).gds.lvs.spice .
	rm -f *.ext

antenna:
	magic -rcfile $(MAGIC_RC) -noconsole -dnull tcl/antenna.tcl $(PROJECT_NAME)
	rm -f *.ext

drc:
	magic -rcfile $(MAGIC_RC) -noconsole -dnull tcl/drc.tcl $(PROJECT_NAME)

klayout_drc:
	klayout -b -r $(PDK_ROOT)/gf180mcuD/libs.tech/klayout/tech/drc/gf180mcu.drc -rd input=../gds/$(PROJECT_NAME).gds -rd report=../gds/$(PROJECT_NAME).lyrdb

%.lvs.report: %.lvs.spice ../src/project.v
	netgen -batch eval "set project $* ; source tcl/lvs_netgen.tcl"
	mv lvs.report $@
	./tcl/check_lvs_report.sh $@

$(PROJECT_NAME).gds.lvs.report: $(PROJECT_NAME).gds.lvs.spice ../src/project.v
	netgen -batch eval "set project $(PROJECT_NAME).gds ; source tcl/lvs_netgen.tcl"
	mv lvs.report $@
	./tcl/check_lvs_report.sh $@

lvs: $(PROJECT_NAME).lvs.report
	./tcl/check_lvs_report.sh $%

gdslvs: gdslvs.report
	./tcl/check_lvs_report.sh gdslvs.report

update_gds:
	mkdir -p ../gds ../lef
	magic -rcfile $(MAGIC_RC) -noconsole -dnull tcl/update_gds_lef.tcl $(PROJECT_NAME)

clean:
	rm -f *.fb.txt *.lvs.report *.lvs.spice *.nodes
