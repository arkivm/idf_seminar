from mecode_wrapper import *

g = None

def fill_area_out_to_in(x_start, y_start, x_end, y_end, print_width):
    """
    Filling the given axis aligned rectangle area by letting the print head move vertically
    :param x_start:
    :param y_start:
    :param x_end:
    :param y_end:
    :param print_width:
    :return: none
    """
    # setting head to initial position
    normal_move(x=x_start, y=y_start)
    up = True
    right = False
    i = 0
    x_center = (x_start + x_end) / 2
    y_center = (y_start + y_end) / 2

    hitMiddle = False
    while(hitMiddle == False):
        result = shift_to_center(x_start,y_end, x_center, y_center, print_width, i)
        perform_move(result['overMiddle'], result['x'], result['y'])
        result = shift_to_center(x_end,y_end, x_center, y_center, print_width, i)
        perform_move(result['overMiddle'], result['x'], result['y'])
        result = shift_to_center(x_end, y_start, x_center, y_center, print_width, i)
        perform_move(result['overMiddle'], result['x'], result['y'])
        result = shift_to_center(x_start,y_start, x_center, y_center, print_width, i)
        perform_move(result['overMiddle'], result['x'], result['y']) #move to starting position
        i = i + 1
        result = shift_to_center(x_start,y_start, x_center, y_center, print_width, i) #move to new rectangle
        perform_move(result['overMiddle'], result['x'], result['y'])
        hitMiddle = result['overMiddle']

    return

def move_shifted_to_center(x, y, x_opposite, y_opposite, print_width, iteration):
    x_center = (x+x_opposite)/2
    y_center = (y+y_opposite)/2
    result = shift_to_center(x, y, x_center, y_center, print_width, iteration)
    perform_move(result['overMiddle'], result['x'], result['y'])
    return result['overMiddle'] #returns whether we are in opposing territory

def perform_move(overMiddle, x, y):
    if overMiddle:
       normal_move(x, y)
    else:
        g.abs_move(x, y)

def shift_to_center(x, y, x_center, y_center, print_width, iteration):
    done = False
    if (x < x_center):
        x = x + print_width * iteration
        if (x >= x_center):
            x = x_center
            done = True
    else:
        x = x - print_width * iteration
        if (x <= x_center):
            x = x_center
            done = True
    if (y < y_center):
        y = y + print_width * iteration
        if (y >= y_center):
            y = y_center
            done = done & True
    else:
        y = y - print_width * iteration
        if (y <= y_center):
            y = y_center
            done = done & True
    return {'overMiddle': done, 'x': x, 'y': y}


#Basic shape implementations

def fill_area_vertical(x_start, y_start, x_end, y_end, print_width):
    """
    Filling an 2D axis aligned rectangle area given by the lower left corner and the upper right corner by letting the print head only move vertically.

     _______
    |       |
    |       |
    |_______|    

    :param x_start: x coordinate of the lower left corner of the area rectangle
    :param y_start: y coordinate of the lower left corner of the area rectangle
    :param x_end: x coordinate of the upper right corner of the area rectangle
    :param y_end: y coordinate of the upper right corner of the area rectangle
    :param print_width: the width of the printer head extrudion.
    """
    # setting head to initial position
    normal_move(x=x_start, y=y_start)
    up = True
    i = 0

    g.abs_move(x=i+x_start, y=y_end)
    i = i + print_width
    up = False

    while i + x_start < x_end:
        if up:
            g.abs_move(x=i+x_start, y=y_start)
            g.abs_move(x=i+x_start, y=y_end)
            up = False
        else:
            g.abs_move(x=i+x_start, y=y_end)
            g.abs_move(x=i+x_start, y=y_start)
            up = True

        i = i + print_width
    return


def fill_triangle_hor(x_left, y_left, width, height, print_width):
    """
    Filling an axis aligned 90 degree triangle horizontally, with the perpendicular sides parallel to the x and y axis.

       /|
      / |
     /  |
    /___|

    :param x_left: x coordinate of the lower left corner of the triangle
    :param y_left: y coordinate of the lower left corner of the triangle
    :param width: the distance from the lower left corner to the lower right corner of the triangle
    :param height: the distance from the lower right corner to the upper peak of the triangle
    :param print_width: the width of the printer head extrudion.
    """
    # set head initial position
    normal_move(x=x_left, y=y_left)

    temp = g.current_multiplier()
    g.set_extrusion_mult(1)

    width_add = 2 * width / (height /print_width)
    act_x_left = x_left

    right = True
    i = 0
    while i <= width and i <= height:
        if right:
            g.abs_move(x=x_left+width, y=y_left+i)
            g.abs_move(x=x_left+width, y=y_left+i+print_width)
            right = False
        else:
            g.abs_move(x=act_x_left+width_add, y=y_left+i)
            g.abs_move(x=act_x_left+width_add , y=y_left+i+print_width)
            right = True
            act_x_left += width_add

        i = i + print_width

    g.set_extrusion_mult(temp)
    return


def fill_triangle_hor_upside(x_left, y_left, width, height, print_width):
    """
    Filling an axis aligned 90 degree triangle hoizontally, with the perpendicular sides parallel to the x and y axis.

     ____
    |   /
    |  /
    | /
    |/

    :param x_left: x coordinate of the upper left corner of the triangle
    :param y_left: y coordinate of the upper left corner of the triangle
    :param width: the distance from the upper left corner to the upper right corner of the triangle
    :param height: the distance from the upper left corner to the lower peak of the triangle
    :param print_width: the width of the printer head extrudion.
    """
    # set head initial position
    normal_move(x=x_left, y=y_left)

    temp = g.current_multiplier()
    g.set_extrusion_mult(1)

    width_add = 2 * width / (height /print_width)
    act_x_right = x_left

    right = True
    i = 0

    while (i <= height):
        if right:
            g.abs_move(x = act_x_right, y = y_left +i )
            g.abs_move(x = act_x_right, y = y_left + i + print_width)
            act_x_right = act_x_right + width_add
            right = False
        else:
            g.abs_move(x = x_left, y = y_left + i)
            g.abs_move(x = x_left, y = y_left + i + print_width)
            right = True

        i = i + print_width
   
   
    g.set_extrusion_mult(temp)
    return



def fill_half_sheared(x_left, y_left, width, h1, h2, printWidth):
    """
    Filling an quadrangle with an horizontal lower edge, and two horizontal edges with different heights so the upper edge can be diagonal.

        /|
       / | 
      /  |
     /   |
    |    |
    |____|

    :param x_left: x coordinate of the lower left corner
    :param y_left: y coordinate of the lower left corner
    :param width: the distance from the lower left corner to the lower right corner 
    :param h1: the height of the left side of the quadrangle - distance from the lower left corner to the upper left corner 
    :param h2: the height of the right side of the quadrangle - distance from the lower right corner to the upper right corner 
    :param print_width: the width of the printer head extrudion.
    """

    #initialize
    normal_move(x_left, y_left)

    up = True
    add_height = (h2 - h1) * 2 / (width/printWidth )

    act_y = y_left + h1
    i = 0

    while (i <= width):
        if up:
            g.abs_move(x= x_left + i, y= act_y)
            g.abs_move( x= x_left + i + printWidth, y = act_y)
            act_y = act_y + add_height
            up = False
        else:
            g.abs_move(x=x_left + i , y = y_left)
            g.abs_move(x = x_left + i + printWidth, y = y_left)
            up = True

        i = i + printWidth
    return



def fill_triangle_diag(x_left, y_left, width, height, print_width):
    """
    Filling an axis aligned 90 degree triangle diagonally, with the perpendicular sides parallel to the x and y axis
    Caution: This only computes good results if width and height have the same value

       /|
      / |
     /  |
    /___|

    :param x_left: x coordinate of the lower left corner of the triangle
    :param y_left: y coordinate of the lower left corner of the triangle
    :param width: the distance from the lower left corner to the lower right corner of the triangle
    :param height: the distance from the lower right corner to the upper peak of the triangle
    :param print_width: the width of the printer head extrudion.
    """

    # set head initial position
    normal_move(x=x_left, y=y_left)

    right = True
    i = 0
    while i <= width:
        if right:
            g.abs_move(x=x_left+width, y=y_left+height-i)
            g.abs_move(x=x_left+width, y=y_left+height-i-print_width)
            right = False
        else:
            g.abs_move(x=x_left+i, y=y_left)
            g.abs_move(x=x_left+i+print_width, y=y_left)
            right = True

        i = i + print_width
    return


def fill_area_horizontal(x_start, y_start, x_end, y_end, print_width):
    """
    Filling the given axis aligned rectangle area by letting the print head move horizontally
    
     _______
    |       |
    |       |
    |_______|    

    :param x_start: x coordinate of the lower left corner of the area rectangle
    :param y_start: y coordinate of the lower left corner of the area rectangle
    :param x_end: x coordinate of the upper right corner of the area rectangle
    :param y_end: y coordinate of the upper right corner of the area rectangle
    :param print_width: the width of the printer head extrudion.
    """

    # setting head to initial position
    normal_move(x=x_start, y=y_start)

    right = True
    i = 0
    while i + y_start < y_end:
        if right:
            g.abs_move(x=x_start, y=i+y_start)
            g.abs_move(x=x_start, y=i+y_start+print_width)
            right = False
        else:
            g.abs_move(x=x_end, y=i+y_start)
            g.abs_move(x=x_end, y=i+y_start+print_width)
            right = True

        i = i + print_width
    return


def fill_y_sheared(x_left, y_left, x_right, y_right, h_height, print_width):
    """
    Filling a sheared quadrangle with the vertical edges aligned to the y-axis diagonally.

        .'|
      .'  |  
    .'    |
    |    .'
    |  .'  
    |.'   


    :param x_left: x coordinate of the lower left corner of the area rectangle
    :param y_left: y coordinate of the lower left corner of the area rectangle
    :param x_right: x coordinate of the lower right corner of the area rectangle
    :param y_right: y coordinate of the lower right corner of the area rectangle
    :param h_height: distance from the lower corners to the opposite upper conrner.
    :param print_width: the width of the printer head extrudion.
    """
    # setting to initial position
    normal_move(x=x_left, y=y_left)

    right = True
    i = 0
    while(i < h_height):
        if right:
            g.abs_move(x=x_right, y=y_right+i)
            g.abs_move(x=x_right, y=y_right+i+print_width)
            right = False
        else:
            g.abs_move(x=x_left, y=y_left+i)
            g.abs_move(x=x_left, y=y_left+i+print_width)
            right = True

        i = i + print_width
    return



def fill_y_sheared_vertical(x_left, y_left, x_right, y_right, h_height, print_width):
    """
    Filling a sheared quadrangle with the vertical edges aligned to the y-axis vertically.

        .'|
      .'  |  
    .'    |
    |    .'
    |  .'  
    |.'   


    :param x_left: x coordinate of the lower left corner of the area rectangle
    :param y_left: y coordinate of the lower left corner of the area rectangle
    :param x_right: x coordinate of the lower right corner of the area rectangle
    :param y_right: y coordinate of the lower right corner of the area rectangle
    :param h_height: distance from the lower corners to the opposite upper conrner.
    :param print_width: the width of the printer head extrudion.
    """

    #setting to initial position
    normal_move(x_left, y_left)

    width = x_right - x_left
    offset = h_height * 2 / ((x_right - x_left) / print_width)

    actX = x_left
    actY = y_left
    
    up = True
    i = 0

    while(actX < x_right):
        if up:
            actY = actY + h_height + offset
            g.abs_move(x=actX, y=actY)
            actX = actX + print_width
            g.abs_move(x=actX, y=actY)
            up = False
        else:
            actY = actY - h_height
            g.abs_move(x=actX, y=actY)
            actX = actX + print_width
            g.abs_move(x=actX, y=actY)
            up = True
    return



def init_shape_lib(g_object):
    """
    Initialize fuction. This Creates a new mecode object. Call this before using the filling methods.
    """
    global g
    g = g_object