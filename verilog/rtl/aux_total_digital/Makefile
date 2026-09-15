cleanbuild:
	rm -rf aux_total_digital_obj_dir
	rm -f *.so

build:
	ngspice vlnggen -- --x-assign 0 --x-initial 0 $(PWD)/aux_total_digital.v

