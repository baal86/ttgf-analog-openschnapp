import pya
ly = pya.Layout()
ly.read(gdsfile)
top = ly.top_cell()
die = top.dbbox().area()

# (name, layer, datatype): check against your PDK layer map
for name, l, d in [("M1", 34, 0), ("M2", 36, 0), ("M3", 42, 0), ("M4", 46, 0), ("M5", 81, 0), ("Poly2", 30, 0)]:
    r = pya.Region(top.begin_shapes_rec(ly.layer(l, d))).merged()
    print(f"{name}: {100 * r.area() * ly.dbu**2 / die:.2f} %")