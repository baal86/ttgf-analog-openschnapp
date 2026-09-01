SCH_FILES := $(wildcard ip_*.sch)
LVS_FILES := $(SCH_FILES:%.sch=simulation/%.lvs.spice)

.PHONY: all clean

lvs: $(LVS_FILES)
	sed -i "s/area='13.5u \* 13.5u '/area=0.166n/" simulation/ip_pixel_nd2ps.lvs.spice

simulation/%.lvs.spice: %.sch
	xschem -x -q $< --command "set lvs_netlist 0; set top_is_subckt 1; xschem netlist -file $*.lvs.spice"

clean:
	rm -f $(LVS_FILES)
