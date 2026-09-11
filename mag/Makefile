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

start: $(TEMPLATE_FILE)
	magic -rcfile $(MAGIC_RC) -noconsole -dnull tcl/tt-analog-draw.tcl $(TEMPLATE_FILE) $(PROJECT_NAME)

$(PROJECT_NAME).lvs.spice: $(PROJECT_NAME).mag
	magic -rcfile $(MAGIC_RC) -noconsole -dnull tcl/extract_for_lvs.tcl $(PROJECT_NAME)
	rm -f *.ext

$(PROJECT_NAME).gdslvs.spice: $(PROJECT_NAME).mag
	magic -rcfile $(MAGIC_RC) -noconsole -dnull tcl/extract_for_gdslvs.tcl $(PROJECT_NAME)
	rm -f *.ext

antenna:
	magic -rcfile $(MAGIC_RC) -noconsole -dnull tcl/antenna.tcl $(PROJECT_NAME)
	rm -f *.ext

drc:
	magic -rcfile $(MAGIC_RC) -noconsole -dnull tcl/drc.tcl $(PROJECT_NAME)

klayout_drc:
	klayout -b -r $(PDK_ROOT)/gf180mcuD/libs.tech/klayout/tech/drc/gf180mcu.drc -rd input=../gds/$(PROJECT_NAME).gds -rd report=../gds/$(PROJECT_NAME).lyrdb

lvs.report: $(PROJECT_NAME).lvs.spice ../src/project.v
	netgen -batch eval "set project $(PROJECT_NAME) ; source tcl/lvs_netgen.tcl"

gdslvs.report: $(PROJECT_NAME).gdslvs.spice ../src/project.v
	netgen -batch eval "set project $(PROJECT_NAME) ; source tcl/gdslvs_netgen.tcl"

lvs: lvs.report
	./tcl/check_lvs_report.sh lvs.report

gdslvs: gdslvs.report
	./tcl/check_lvs_report.sh gdslvs.report

update_gds:
	mkdir -p ../gds ../lef
	magic -rcfile $(MAGIC_RC) -noconsole -dnull tcl/update_gds_lef.tcl $(PROJECT_NAME)

clean:
	rm -f lvs.report gdslvs.report *.lvs.spice *.gdslvs.spice *.nodes
