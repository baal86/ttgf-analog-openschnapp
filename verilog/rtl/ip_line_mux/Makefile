SIM ?= verilator
TOPLEVEL_LANG ?= verilog

VERILOG_SOURCES += $(PWD)/ip_line_mux.v
TOPLEVEL = ip_line_mux
MODULE =   tb_line_mux

include $(shell cocotb-config --makefiles)/Makefile.sim

# sim is included from cocotb
all: sim build

build:
	ngspice vlnggen $(PWD)/ip_line_mux.v
