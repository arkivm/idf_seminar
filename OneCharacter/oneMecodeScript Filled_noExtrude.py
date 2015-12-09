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

#Filling an axis aligned 90 degree triangle, with the perpendicular sides parallel to the x and y axis
def fillTriangleHor(x_left, y_left, width, height, printWidth):

	#set head initial position
	g.extrude=False
	g.abs_move(x_left, y_left)
	g.extrude=True

	widthAdd =2 * width / (height /printWidth)
	act_x_left = x_left
	
	right = True;
	i = 0;
	while ((i <= width) and (i <= height) ):
		if right:
			g.abs_move(x=x_left+width, y=y_left+i)
			g.abs_move(x=x_left+width, y=y_left+i+printWidth)
			right = False
		else:
			g.abs_move(x=act_x_left+widthAdd, y=y_left+i)
			g.abs_move(x=act_x_left+widthAdd , y=y_left+i+printWidth)
			right = True
			act_x_left=act_x_left+widthAdd 
		
		i = i + printWidth
	return


#Filling an axis aligned 90 degree triangle, with the perpendicular sides parallel to the x and y axis
#Caution: This only computes good results if width and height have the same value
def fillTriangleDiag(x_left, y_left, width, height, printWidth):

	#set head initial position
	g.extrude=False
	g.abs_move(x_left, y_left)
	g.extrude=True
	
	right = True;
	i = 0;
	while (i <= width):
		if right:
			g.abs_move(x=x_left+width, y=y_left+height-i)
			g.abs_move(x=x_left+width, y=y_left+height-i-printWidth)
			right = False
		else:
			g.abs_move(x=x_left+i, y=y_left)
			g.abs_move(x=x_left+i+printWidth, y=y_left)
			right = True
		
		i = i + printWidth
	return
 

#Filling the given axis aligned rectangle area by letting the print head move horizontally
def fillAreaHorizontal(x_start, y_start, x_end, y_end, printWidth):

	#setting head to initial position
	g.extrude=False
	g.abs_move(x_start, y_start)
	g.extrude=True

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
	g.extrude=False
	g.abs_move(x_left, y_left)
	g.extrude=True

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


g = G(extrude=True)
g.feed(1500)
g.absolute()
#kwargs = {"E":0}


fillAreaHorizontal(10,5,40,10, 0.2);
fillAreaVertical(20,10,30,40,0.2);
fillTriangleHor(20, 40, 10, 5, 0.2);
fillYSheared(10, 35, 30, 45, 5, 0.2);





