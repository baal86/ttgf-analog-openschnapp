PROJECT_NAME := ip_reset_latch
harden:
	mkdir -p runs/latest
	librelane --overwrite --force-run-dir runs/latest config.yaml

update_files:
	cp runs/latest/final/mag/$(PROJECT_NAME).mag ../../mag/$(PROJECT_NAME).mag
	cp runs/latest/final/pnl/$(PROJECT_NAME).pnl.v ../../verilog/gl/$(PROJECT_NAME).v

view:
	magic runs/latest/final/mag/$(PROJECT_NAME).mag

