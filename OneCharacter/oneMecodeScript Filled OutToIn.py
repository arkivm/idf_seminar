from mecode import G

#Filling the given axis aligned rectangle area by letting the print head move vertically
def fillAreaVertical(x_start, y_start, x_end, y_end, printWidth):
	
	#setting head to initial position
	g.extrude=False
	g.abs_move(x_start, y_start)
	g.extrude=True

	up = True
	i = 0

	g.abs_move(x=i+x_start, y=y_end)
	i = i + printWidth
	up = False

	while (i + x_start < x_end): 
		if up:
			g.abs_move(x=i+x_start, y=y_start)
			g.abs_move(x=i+x_start, y=y_end)
			up = False
		else:
			g.abs_move(x=i+x_start, y=y_end)
			g.abs_move(x=i+x_start, y=y_start)
			up = True
		
		i = i + printWidth
	return

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
	x = x + rec * print_width * into_x
	y = y + rec * print_width * into_y
	g.abs_move(x, y, **kwargs)
	return {'x_goal':x + print_width * into_x , 'y_goal':y + print_width * into_y}

def printOutline(rec, doInvert):
	absMoveShrink(x=10,y=0, down_x = False, down_y = False, rec = rec, invert = doInvert)
	absMoveShrink(x=10,y=7, down_x = False, down_y = True, rec = rec, invert = doInvert)
	absMoveShrink(x=19,y=7, down_x = False, down_y = True, rec = rec, invert = doInvert)
	corner_1 = absMoveShrink(x=19,y=38, down_x = False, down_y = False, rec = rec, invert = doInvert)
	absMoveShrink(x=10,y=35, down_x = False, down_y = False, rec = rec, invert = doInvert)
	absMoveShrink(x=10,y=42, down_x = False, down_y = True, rec = rec, invert = doInvert)
	absMoveShrink(x=31, y=49, down_x = True, down_y = True, rec = rec, invert = doInvert)
	corner_2 = absMoveShrink(x=31, y=7, down_x = True, down_y = True, rec = rec, invert = doInvert)
	absMoveShrink(x=40, y=7, down_x = True, down_y = True, rec = rec, invert = doInvert)
	absMoveShrink(x=40, y=0, down_x = True, down_y = False, rec = rec, invert = doInvert)
	absMoveShrink(x=10, y=0, down_x = False, down_y = False, rec = rec, invert = doInvert)
	return {'x1': corner_1['x_goal'], 'y1': corner_1['y_goal'], 'x2': corner_2['x_goal'], 'y2': corner_2['y_goal']}


g = G(extrude=True, extrusion_width = 0.48, filament_diameter = 1.75)
g.feed(1500)
g.absolute()
kwargs = {"E":0}


start = 0
finish = 8
for height in range (start, finish):
	g.abs_move(z = height * 0.48)
	for outlineRecursions in range (0, 7):
		corners = printOutline(outlineRecursions, True); #prints the outline except for a corpus
	if (height == start or height == finish - 1):
		fillAreaVertical(corners['x1'], corners['y2'], corners['x2'], corners['y1'], 0.48)