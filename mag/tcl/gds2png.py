import pya

view = pya.LayoutView()
view.load_layout(gdsfile)

view.load_layer_props("/foss/pdks/gf180mcuD/libs.tech/klayout/tech/gf180mcu.lyp")

view.set_config("text-visible", "false")

view.max_hier()
view.zoom_fit()

view.save_image(output, 3000, 3000)