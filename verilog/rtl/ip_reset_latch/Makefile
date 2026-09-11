SIM ?= verilator
TOPLEVEL_LANG ?= verilog

VERILOG_SOURCES := $(PWD)/ip_reset_latch.v

TOPLEVEL := ip_reset_latch
COCOTB_TEST_MODULES := tb_reset_latch

COMPILE_ARGS += --trace
SIM_ARGS += --trace

include $(shell cocotb-config --makefiles)/Makefile.sim

# sim is included from cocotb

# Co-simulation clean and build
cleanbuild:
	rm -rf ip_reset_latch_obj_dir
	rm -f *.so

build:
	ngspice vlnggen $(PWD)/ip_reset_latch.v

