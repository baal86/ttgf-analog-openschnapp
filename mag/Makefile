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

parax: clean $(PROJECT_NAME).sim.spice

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

$(PROJECT_NAME).sim.spice: $(PROJECT_NAME).mag
	magic -rcfile $(MAGIC_RC) -noconsole -dnull tcl/extract_for_sim.tcl $(PROJECT_NAME)
	rm -f *.ext

lvs.report: $(PROJECT_NAME).lvs.spice ../src/project.v
	netgen -batch eval "set project $(PROJECT_NAME) ; source tcl/lvs_netgen.tcl"

gdslvs.report: $(PROJECT_NAME).gdslvs.spice ../src/project.v
	netgen -batch eval "set project $(PROJECT_NAME) ; source tcl/gdslvs_netgen.tcl"

lvs: lvs.report
	@propOk=1; match=0; port=1; \
    if grep -q "match uniquely" lvs.report; then \
        match=1; \
    fi; \
    if grep -q "Property errors were found" lvs.report; then \
        propOk=0; \
    fi; \
    if grep -q "failed pin matching" lvs.report; then \
        match=0; \
    fi; \
    if grep -q "Final result: Netlists do not match" lvs.report; then \
        match=0; \
    fi; \
    if grep -q "port errors" lvs.report; then \
        port=0; \
    fi; \
    if grep -q "Final result: Circuits match uniquely\." lvs.report; then \
        match=1; \
    fi; \
	if [ $$match -eq 1 ] && [ $$propOk -eq 1 ] && [ $$port -eq 1 ]; then \
        echo "LVS OK"; \
	    exit 0; \
    else \
        echo "LVS FAIL: match=$$match properties=$$propOk port=$$port"; \
	    exit 1; \
    fi

gdslvs: gdslvs.report
	@propOk=1; match=0; port=1; \
    if grep -q "match uniquely" gdslvs.report; then \
        match=1; \
    fi; \
    if grep -q "Property errors were found" gdslvs.report; then \
        propOk=0; \
    fi; \
    if grep -q "failed pin matching" gdslvs.report; then \
        match=0; \
    fi; \
    if grep -q "Final result: Netlists do not match" gdslvs.report; then \
        match=0; \
    fi; \
    if grep -q "port errors" gdslvs.report; then \
        port=0; \
    fi; \
    if grep -q "Final result: Circuits match uniquely\." gdslvs.report; then \
        match=1; \
    fi; \
	if [ $$match -eq 1 ] && [ $$propOk -eq 1 ] && [ $$port -eq 1 ]; then \
        echo "GDS LVS OK"; \
	    exit 0; \
    else \
        echo "GDS LVS FAIL: match=$$match properties=$$propOk port=$$port"; \
	    exit 1; \
    fi

update_gds:
	mkdir -p ../gds ../lef
	magic -rcfile $(MAGIC_RC) -noconsole -dnull tcl/update_gds_lef.tcl $(PROJECT_NAME)

clean:
	rm -f lvs.report gdslvs.report *.lvs.spice *.gdslvs.spice *.nodes
