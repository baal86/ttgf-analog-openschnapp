SIM ?= verilator
TOPLEVEL_LANG ?= verilog

VERILOG_SOURCES += $(PWD)/ip_row_mux.v
TOPLEVEL = ip_row_mux
MODULE =   tb_row_mux

include $(shell cocotb-config --makefiles)/Makefile.sim

# sim is included from cocotb
all: sim build

build:
	ngspice vlnggen $(PWD)/ip_row_mux.v
