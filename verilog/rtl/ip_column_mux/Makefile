SIM ?= verilator
TOPLEVEL_LANG ?= verilog

VERILOG_SOURCES := $(PWD)/ip_column_mux.v

TOPLEVEL := ip_column_mux
COCOTB_TEST_MODULES := tb_column_mux

COMPILE_ARGS += --trace
SIM_ARGS += --trace

include $(shell cocotb-config --makefiles)/Makefile.sim

# sim is included from cocotb

# Co-simulation clean and build
cleanbuild:
	rm -rf ip_column_mux_obj_dir
	rm -f *.so

build:
	ngspice vlnggen $(PWD)/ip_column_mux.v

