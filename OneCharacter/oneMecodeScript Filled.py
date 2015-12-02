from mecode import G



#Filling the given axis aligned rectangle area by letting the print head move vertically
def fillAreaVertical(x_start, y_start, x_end, y_end, printWidth):
	#setting head to initial position
	g.abs_move(x_start, y_start, **kwargs)

	up = True
	i = 0
	while (i + x_start < x_end): 
		if up:
			g.abs_move(x=i+x_start, y=y_end, **kwargs)
			g.abs_move(x=i+x_start+printWidth, y=y_end, **kwargs)
			up = False
		else:
			g.abs_move(x=i+x_start, y=y_start, **kwargs)
			g.abs_move(x=i+x_start+printWidth, y=y_start, **kwargs)
			up = True
		
		i = i + printWidth
	return

#Filling the given axis aligned rectangle area by letting the print head move horizontally
def fillAreaHorizontal(x_start, y_start, x_end, y_end, printWidth):
	#setting head to initial position
	g.abs_move(x_start, y_start, **kwargs)

	right = True
	i = 0
	while (i + y_start < y_end): 
		if right:
			g.abs_move(x=x_start, y=i+y_start, **kwargs)
			g.abs_move(x=x_start, y=i+y_start+printWidth, **kwargs)
			right = False
		else:
			g.abs_move(x=x_end, y=i+y_start, **kwargs)
			g.abs_move(x=x_end, y=i+y_start+printWidth, **kwargs)
			right = True
		
		i = i + printWidth
	return

def fillYSheared(x_left, y_left, x_right, y_right, h_height, printWidth):
	#setting to initial position
	g.abs_move(x_left, y_left, **kwargs)

	right = True
	i = 0
	while(i < h_height):
		if right:
			g.abs_move(x=x_right, y=y_right+i, **kwargs)
			g.abs_move(x=x_right, y=y_right+i+printWidth, **kwargs)
			right = False
		else:
			g.abs_move(x=x_left, y=y_left+i, **kwargs)
			g.abs_move(x=x_left, y=y_left+i+printWidth, **kwargs)
			right = True
		
		i = i + printWidth
	return


g = G(extrude=True)
g.feed(1500)
g.absolute()
kwargs = {"E":0}


fillAreaHorizontal(10,5,40,10, 0.2);
fillAreaVertical(20,10,30,45,0.2);
fillYSheared(10, 35, 20, 40, 5, 0.2);



