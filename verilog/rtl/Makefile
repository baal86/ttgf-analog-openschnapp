SIM ?= verilator
TOPLEVEL_LANG ?= verilog

VERILOG_SOURCES += $(PWD)/ip_line_mux.v
TOPLEVEL = ip_line_mux
MODULE =   tb_line_mux

include $(shell cocotb-config --makefiles)/Makefile.sim
