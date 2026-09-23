.PHONY: all

all:
	$(MAKE) -C xschem cleandocs docs
	$(MAKE) -C xschem cleanparax parax
	$(MAKE) -C xschem cleanlvs lvs
	$(MAKE) -C mag checkusage
	$(MAKE) -C mag cleanlvs cleangds
	$(MAKE) -C mag gds
	$(MAKE) -C mag png
	$(MAKE) -C mag lvs
	$(MAKE) -C mag drc
	$(MAKE) -C mag klayout_drc
	$(MAKE) -C mag klayout_density

