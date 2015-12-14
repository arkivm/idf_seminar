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

def fill_area_vertical(x_start, y_start, x_end, y_end, print_width):
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
    Filling an axis aligned 90 degree triangle, with the perpendicular sides parallel to the x and y axis
    :param x_left:
    :param y_left:
    :param width:
    :param height:
    :param print_width:
    :return:
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
    Filling an axis aligned 90 degree triangle, with the perpendicular sides parallel to the x and y axis
    :param x_left:
    :param y_left:
    :param width:
    :param height:
    :param print_width:
    :return:
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
    Filling an axis aligned 90 degree triangle, with the perpendicular sides parallel to the x and y axis
    Caution: This only computes good results if width and height have the same value
    :param x_left:
    :param y_left:
    :param width:
    :param height:
    :param print_width:
    :return:
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
    :param x_start:
    :param y_start:
    :param x_end:
    :param y_end:
    :param print_width:
    :return:
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

#prints along the diagoal line
def fill_y_sheared(x_left, y_left, x_right, y_right, h_height, print_width):
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


#fillYSheared - vertical
#Filling a sheared rectangle. 
def fill_y_sheared_vertical(x_left, y_left, x_right, y_right, h_height, print_width):
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
    global g
    g = g_object