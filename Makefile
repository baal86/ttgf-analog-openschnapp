.PHONY: gds

gds:
	$(MAKE) -C verilog/rtl/ip_column_mux sim cleanbuild build
	$(MAKE) -C verilog/rtl/ip_row_mux sim cleanbuild build
	$(MAKE) -C verilog/rtl/ip_reset_latch sim cleanbuild build
	$(MAKE) -C xschem cleandocs docs
	$(MAKE) -C xschem cleanparax parax
	$(MAKE) -C xschem cleanlvs lvs
	$(MAKE) -C mag update_gds
	$(MAKE) -C mag gdslvs
	$(MAKE) -C mag drc
	$(MAKE) -C mag klayout_drc
	$(MAKE) -C mag png
