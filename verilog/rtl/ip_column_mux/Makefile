SIM ?= verilator
TOPLEVEL_LANG ?= verilog

VERILOG_SOURCES += $(PWD)/ip_column_mux.v
TOPLEVEL = ip_column_mux
MODULE =   tb_column_mux

include $(shell cocotb-config --makefiles)/Makefile.sim

# sim is included from cocotb
all: sim build

build:
	ngspice vlnggen $(PWD)/ip_column_mux.v
