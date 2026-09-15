import random 

random.seed(42)

lines = []

NROWS = 8
NCOLS = 6

index = 100

lines += [".include ../parax/ip_column_switch.sim.spice"]
lines += [".include ../parax/ip_pixel_nd2ps.sim.spice"]

for i in range(NCOLS):
    lines += [f"x{index} 0 cl{i} sf nCY{i} ip_column_switch_parax"]
    index += 1

lines += [""]

for i in range(NCOLS):
    for j in range(NROWS):
        lines += [f"x{index} 0 VDD reset cl{i} nRY{j} ip_pixel_nd2ps_parax"]
        lines += [f"IPX{index}  x{index}.siminj  0 {random.randrange(32)}p"]
        index += 1

with open("simulation/pixels.spice","w") as f:
    f.write("\n".join(lines))