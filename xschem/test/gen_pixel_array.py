import random 

random.seed(42)

lines = []

NROWS = 8
NCOLS = 6

START_T = 1200
PIXEL_T = 10

index = 100

lines += [".include ../parax/ip_column_switch.sim.spice"]
lines += [".include ../parax/ip_pixel_nd2ps.sim.spice"]

for i in range(NCOLS):
    lines += [f"RnCY{i}  nCY{i} 0 100k"]

lines += [""]

for i in range(NROWS):
    lines += [f"RnRY{i}  nRY{i} 0 100k"]

lines += [""]

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

lines = []

# Reset sequence
lines += ["0us\t\t0s  0s  0s  0s  0s  0s  0s  0s  0s  0s  0s"]
lines += ["100us\t\t1s  0s  0s  0s  0s  0s  0s  0s  0s  0s  0s"]
lines += ["110us\t\t0s  0s  0s  0s  0s  0s  0s  0s  0s  0s  0s"]

def bit(number, position):
    # Shift the bit to the 0th position, then check it with & 1
    return (number >> position) & 1

# Pixel Read
t = START_T
for i in range(NCOLS):
    for j in range(NROWS):
        line = f"{START_T+(j+i*NROWS)*PIXEL_T}us\t\t0s  "
        for jj in reversed(range(5)):
            line += f"{bit(j+1,jj)}s  "
        for ii in reversed(range(5)):
            line += f"{bit(i+1,ii)}s  "
        lines += [line]
    lines +=[""]

lines += [f"{START_T+NROWS*NCOLS*PIXEL_T}us\t\t0s  0s  0s  0s  0s  0s  0s  0s  0s  0s  0s"]

with open("st_total.txt","w") as f:
    f.write("\n".join(lines))