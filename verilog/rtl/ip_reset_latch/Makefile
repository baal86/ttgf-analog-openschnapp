SIM ?= verilator
TOPLEVEL_LANG ?= verilog

VERILOG_SOURCES += $(PWD)/ip_reset_latch.v
TOPLEVEL = ip_reset_latch
MODULE =   tb_reset_latch

COMPILE_ARGS += --trace
SIM_ARGS += --trace

include $(shell cocotb-config --makefiles)/Makefile.sim

# sim is included from cocotb
build:
	ngspice vlnggen $(PWD)/ip_reset_latch.v

clean::
	rm -rf ip_reset_latch_obj_dir
	rm -f *.so