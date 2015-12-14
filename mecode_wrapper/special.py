#!/usr/bin/python

from shape_implementations import *


def print_outline():
    """
    print the outline of letter '1'
    :return: none
    """
    normal_move(x=0, y=0, z=0)
    g.set_home(0, 0, 0)
    normal_move(x=10, y=0, z=0.2)
    g.abs_move(x=10, y=7)
    g.abs_move(x=19, y=7)
    g.abs_move(x=19, y=38)
    g.abs_move(x=10, y=35)
    g.abs_move(x=10, y=42)
    g.abs_move(x=31, y=49)
    g.abs_move(x=31, y=7)
    g.abs_move(x=40, y=7)
    g.abs_move(x=40, y=0)
    g.abs_move(x=10, y=0)


def method1():
    """
    Rectangle fill method. Divides the object into rectangles and fills it
    :return:none
    """
    #print_outline()
    #fill_area_horizontal(10, 0, 40, 7, 0.2)
    #fill_area_horizontal(19, 7, 31, 38, 0.2)
    #fill_triangle_hor(19, 38, 12, 4, 0.2)
    ##replaced the sheared rectangle with 2 triangles
    #fill_triangle_hor(10, 42, 21, 7, 0.2)
    #fill_triangle_hor_upside(10, 35, 21, 7, 0.2)

    fill_half_sheared(10, 10, 20, 10, 50, 0.2)


if __name__=='__main__':
    g = init_printer()
    init_shape_lib(g)
    prepare_layer1()
    set_tool(0)
    method1()
    finish_printing()