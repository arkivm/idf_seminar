from mecode import G

kwargs = {"E":0}
g = 0

#Filling the given axis aligned rectangle area by letting the print head move vertically
def fillAreaVertical(x_start, y_start, x_end, y_end, printWidth):
	#setting head to initial position
	g.abs_move(x_start, y_start, **kwargs)

	up = True
	i = 0
	while (i + x_start < x_end): 
		if up:
			g.abs_move(x=i+x_start, y=y_end)
			g.abs_move(x=i+x_start+printWidth, y=y_end)
			up = False
		else:
			g.abs_move(x=i+x_start, y=y_start)
			g.abs_move(x=i+x_start+printWidth, y=y_start)
			up = True
		
		i = i + printWidth
	return

#Filling the given axis aligned rectangle area by letting the print head move horizontally
def fillAreaHorizontal(x_start, y_start, x_end, y_end, printWidth):
	#setting head to initial position
	g.abs_move(x_start, y_start)

	right = True
	i = 0
	while (i + y_start < y_end): 
		if right:
			g.abs_move(x=x_start, y=i+y_start)
			g.abs_move(x=x_start, y=i+y_start+printWidth)
			right = False
		else:
			g.abs_move(x=x_end, y=i+y_start)
			g.abs_move(x=x_end, y=i+y_start+printWidth)
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
			g.abs_move(x=x_right, y=y_right+i)
			g.abs_move(x=x_right, y=y_right+i+printWidth)
			right = False
		else:
			g.abs_move(x=x_left, y=y_left+i)
			g.abs_move(x=x_left, y=y_left+i+printWidth)
			right = True
		
		i = i + printWidth
	return

def init():
  global g
  g = G(extrude=True, extrusion_width = 0.48, filament_diameter = 1.75)
  g.feed(1500)
  g.absolute()

def draw_outline():
  g.abs_move(x=10,y=0, **kwargs)
  g.abs_move(x=10,y=7)
  g.abs_move(x=19,y=7)
  g.abs_move(x=19,y=38)
  g.abs_move(x=10,y=35)
  g.abs_move(x=10,y=42)
  g.abs_move(x=31, y=49)
  g.abs_move(x=31, y=7)
  g.abs_move(x=40, y=7)
  g.abs_move(x=40, y=0)
  g.abs_move(x=10, y=0)

if __name__=='__main__':
  init()
  draw_outline()
  fillAreaHorizontal(10, 0, 40, 7, 0.5);
  fillAreaVertical(19, 7, 31, 38, 0.5);
  fillYSheared(10, 35, 31, 42, 7, 0.5);
