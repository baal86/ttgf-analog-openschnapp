.PHONY: gds

gds:
	$(MAKE) -C xschem cleandocs docs
	$(MAKE) -C xschem cleanparax parax
	$(MAKE) -C xschem cleanlvs lvs
	$(MAKE) -C mag update_gds
	$(MAKE) -C mag gdslvs
	$(MAKE) -C mag drc
	$(MAKE) -C mag klayout_drc
	$(MAKE) -C mag png
