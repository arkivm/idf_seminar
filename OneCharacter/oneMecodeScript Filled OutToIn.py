from mecode import G


def absMoveShrink(x, y, down_x, down_y, rec, invert):
	print_width = 0.48
	if (down_x):
		into_x = 1
	else:
		into_x = -1
	if (down_y):
		into_y = 1
	else:
		into_y = -1
	if (invert):
		into_x *= -1
		into_y *= -1
	g.abs_move(x = x + rec * print_width * into_x, y = y + rec * print_width * into_y, **kwargs)
	return

def printOutline(rec, doInvert):
	absMoveShrink(x=10,y=0, down_x = False, down_y = False, rec = rec, invert = doInvert)
	absMoveShrink(x=10,y=7, down_x = False, down_y = True, rec = rec, invert = doInvert)
	absMoveShrink(x=19,y=7, down_x = False, down_y = True, rec = rec, invert = doInvert)
	absMoveShrink(x=19,y=38, down_x = False, down_y = False, rec = rec, invert = doInvert)
	absMoveShrink(x=10,y=35, down_x = False, down_y = False, rec = rec, invert = doInvert)
	absMoveShrink(x=10,y=42, down_x = False, down_y = True, rec = rec, invert = doInvert)
	absMoveShrink(x=31, y=49, down_x = True, down_y = True, rec = rec, invert = doInvert)
	absMoveShrink(x=31, y=7, down_x = True, down_y = True, rec = rec, invert = doInvert)
	absMoveShrink(x=40, y=7, down_x = True, down_y = True, rec = rec, invert = doInvert)
	absMoveShrink(x=40, y=0, down_x = True, down_y = False, rec = rec, invert = doInvert)
	absMoveShrink(x=10, y=0, down_x = False, down_y = False, rec = rec, invert = doInvert)
	return


g = G(extrude=True, extrusion_width = 0.48, filament_diameter = 1.75)
g.feed(1500)
g.absolute()
kwargs = {"E":0}
for height in range (0, 8):
	g.abs_move(z = height * 0.48)
	for outlineRecursions in range (0, 8):
		printOutline(outlineRecursions, True); #prints the outline except for a corpus
