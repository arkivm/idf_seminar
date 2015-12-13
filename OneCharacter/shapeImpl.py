from mecode import G


#RECTANGLES ------------------------------------------------------------------------------------------------------

#fillAreaVertical
#Filling the given axis aligned rectangle area by letting the print head move vertically
def fillAreaVertical(x_start, y_start, x_end, y_end, printWidth):
    #setting head to initial position
    g.abs_move(x_start, y_start)

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


#fillAreaHorizontal
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

#fillYSheared
#Filling a sheared rectangle. 
def fillYSheared(x_left, y_left, x_right, y_right, h_height, printWidth):
    #setting to initial position
    g.abs_move(x_left, y_left)
    
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


#fillYSheared - vertical
#Filling a sheared rectangle. 
def fillYShearedVertical(x_left, y_left, x_right, y_right, h_height, printWidth):
    #setting to initial position
    g.abs_move(x_left, y_left)

    width = x_right - x_left
    offset = h_height *2 / ((y_right - y_left) / printWidth)

    actX = x_left
    actY = y_left
    
    up = True
    i = 0

    while(actX < x_right):
        if up:
            actY = actY + h_height + offset
            g.abs_move(x=actX, y=actY)
            actX = actX + printWidth
            g.abs_move(x=actX, y=actY)
            up = False
        else:
            actY = actY - h_height
            g.abs_move(x=actX, y=actY)
            actX = actX + printWidth
            g.abs_move(x=actX, y=actY)
            up = True
    return

#TRIANGLES ------------------------------------------------------------------------------------------------------

#Filling an axis aligned 90 degree triangle, with the perpendicular sides parallel to the x and y axis
#caution: at the moment width must not larger than height
def fillTriangleHor(x_left, y_left, width, height, printWidth):
    #set head initial position
    g.abs_move(x_left, y_left)
    
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


#fillTriangleDiag
#Filling an axis aligned 90 degree triangle, with the perpendicular sides parallel to the x and y axis
#Caution: This only computes good results if width and height have the same value
def fillTriangleDiag(x_left, y_left, width, height, printWidth):
    #set head initial position
    g.abs_move(x_left, y_left)
    
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
 


#INITIAL COMMANDS ----------------------------------------------------------------------------

g = G(extrude=True)
g.feed(1500)
g.absolute()
#kwargs = {"E":0}






