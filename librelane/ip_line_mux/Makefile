PROJECT_NAME := ip_line_mux
harden:
	mkdir -p runs/latest
	librelane --overwrite --force-run-dir runs/latest config.yaml

update_files:
	cp runs/latest/final/mag/$(PROJECT_NAME).mag ../../mag/$(PROJECT_NAME).mag
	cp runs/latest/final/nl/$(PROJECT_NAME).nl.v ../../verilog/gl/$(PROJECT_NAME).v
	cp runs/latest/final/spice/${PROJECT_NAME}.spice ../../xschem/simulation/${PROJECT_NAME}.spice

view:
	magic runs/latest/final/mag/$(PROJECT_NAME).mag

