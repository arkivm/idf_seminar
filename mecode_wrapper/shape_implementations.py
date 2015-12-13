from mecode_wrapper import *

g = None


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