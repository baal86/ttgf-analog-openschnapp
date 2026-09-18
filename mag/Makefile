PROJECT_NAME ?= tt_um_baal86_openschnapp
MAGIC_RC := $(PDK_ROOT)/gf180mcuD/libs.tech/magic/gf180mcuD.magicrc
TEMPLATE_FILE := tt_analog_1x2.def

.PHONY: lvs magic png gds

###################################################################################
# PNG export
###################################################################################

png:
	klayout -b -r tcl/gds2png.py -rd gdsfile=../gds/tt_um_baal86_openschnapp.gds -rd output=temp.png
	cp temp.png ../docs/snapshot.png
	rm -f temp.png

###################################################################################
# Defaults - start commented out to prevent accidental re-running
###################################################################################

magic:
	magic -rcfile $(MAGIC_RC) $(PROJECT_NAME).mag

#start: $(TEMPLATE_FILE)
#	magic -rcfile $(MAGIC_RC) -noconsole -dnull tcl/tt-analog-draw.tcl $(TEMPLATE_FILE) $(PROJECT_NAME)


###################################################################################
# LVS and GDS LVS targets
###################################################################################

%.lvs.spice: %.mag
	magic -rcfile $(MAGIC_RC) -noconsole -dnull tcl/extract_for_lvs.tcl $*
	sed -i '/^\.subckt pmoscap_3p3_XWX73L[[:space:]]/,/^\.ends/ s/c_length=6u/c_length=12u/' $@
	rm -f *.ext

$(PROJECT_NAME).gds.lvs.spice: ../gds/$(PROJECT_NAME).gds
	magic -rcfile $(MAGIC_RC) -noconsole -dnull tcl/extract_for_lvs.tcl $<
	mv ../gds/$(PROJECT_NAME).gds.lvs.spice .
	rm -f *.ext

%.lvs.report: %.lvs.spice ../src/project.v
	netgen -batch eval "set project $* ; source tcl/lvs_netgen.tcl"
	mv lvs.report $@
	./tcl/check_lvs_report.sh $@

$(PROJECT_NAME).gds.lvs.report: $(PROJECT_NAME).gds.lvs.spice ../src/project.v
	netgen -batch eval "set project $(PROJECT_NAME).gds ; source tcl/lvs_netgen.tcl"
	mv lvs.report $@
	mv ../gds/$(PROJECT_NAME).gds.fb.txt .
	./tcl/check_lvs_report.sh $@

lvs: $(PROJECT_NAME).lvs.report $(PROJECT_NAME).gds.lvs.report 


###################################################################################
# DRC and Antenna Checks
###################################################################################

antenna:
	magic -rcfile $(MAGIC_RC) -noconsole -dnull tcl/antenna.tcl $(PROJECT_NAME)
	rm -f *.ext

drc:
	magic -rcfile $(MAGIC_RC) -noconsole -dnull tcl/drc.tcl $(PROJECT_NAME)

klayout_drc:
	klayout -b -r $(PDK_ROOT)/gf180mcuD/libs.tech/klayout/tech/drc/gf180mcu.drc -rd input=../gds/$(PROJECT_NAME).gds -rd report=../gds/$(PROJECT_NAME).lyrdb



###################################################################################
# GDS Export
###################################################################################

../gds/$(PROJECT_NAME).gds:
	mkdir -p ../gds ../lef
	magic -rcfile $(MAGIC_RC) -noconsole -dnull tcl/update_gds_lef.tcl $(PROJECT_NAME)

gds:  ../gds/$(PROJECT_NAME).gds

###################################################################################
# Clean target
###################################################################################

cleanlvs:
	rm -f *.fb.txt *.lvs.report *.lvs.spice *.nodes 

cleangds:
	rm -f ../gds/$(PROJECT_NAME).gds