PROJECT_NAME := ip_line_mux
harden:
	mkdir -p runs/latest
	librelane --overwrite --force-run-dir runs/latest config.tcl

update_files:
	cp openlane/$(PROJECT_NAME)/runs/$(PROJECT_NAME)/results/final/gds/$(PROJECT_NAME).gds gds
	cp openlane/$(PROJECT_NAME)/runs/$(PROJECT_NAME)/results/final/verilog/gl/$(PROJECT_NAME).v verilog/gl/
