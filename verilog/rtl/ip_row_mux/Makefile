SIM ?= verilator
TOPLEVEL_LANG ?= verilog

VERILOG_SOURCES += $(PWD)/ip_row_mux.v
TOPLEVEL = ip_row_mux
MODULE =   tb_row_mux
COMPILE_ARGS += --trace
SIM_ARGS += --trace

include $(shell cocotb-config --makefiles)/Makefile.sim

# sim is included from cocotb
build:
	ngspice vlnggen $(PWD)/ip_row_mux.v

clean::
	rm -rf ip_row_mux_obj_dir
	rm -f *.so