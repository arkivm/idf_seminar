from shape_implementations import *


def abs_move_shrink(x, y, down_x, down_y, rec, invert):
    print_width = 0.48
    if down_x:
        into_x = 1
    else:
        into_x = -1

    if down_y:
        into_y = 1
    else:
        into_y = -1

    if invert:
        into_x *= -1
        into_y *= -1
        x += rec * print_width * into_x
        y += rec * print_width * into_y
        g.abs_move(x, y)
        return {'x_goal': x + print_width * into_x, 'y_goal': y + print_width * into_y}


def print_outline(rec, do_invert):
    abs_move_shrink(x=10, y=0, down_x=False, down_y=False, rec=rec, invert=do_invert)
    abs_move_shrink(x=10, y=7, down_x=False, down_y=True, rec=rec, invert=do_invert)
    abs_move_shrink(x=19, y=7, down_x=False, down_y=True, rec=rec, invert=do_invert)
    corner_1 = abs_move_shrink(x=19,y=38, down_x =False, down_y=False, rec = rec, invert=do_invert)
    abs_move_shrink(x=10, y=35, down_x=False, down_y=False, rec=rec, invert=do_invert)
    abs_move_shrink(x=10, y=42, down_x=False, down_y=True, rec=rec, invert=do_invert)
    abs_move_shrink(x=31, y=49, down_x=True, down_y=True, rec=rec, invert=do_invert)
    corner_2 = abs_move_shrink(x=31, y=7, down_x=True, down_y=True, rec = rec, invert=do_invert)
    abs_move_shrink(x=40, y=7, down_x=True, down_y=True, rec=rec, invert=do_invert)
    abs_move_shrink(x=40, y=0, down_x=True, down_y=False, rec=rec, invert=do_invert)
    abs_move_shrink(x=10, y=0, down_x=False, down_y=False, rec=rec, invert=do_invert)
    return {'x1': corner_1['x_goal'], 'y1': corner_1['y_goal'], 'x2': corner_2['x_goal'], 'y2': corner_2['y_goal']}


def fill_out_to_in(start, finish):
    for height in range (start, finish):
        g.abs_move(z=height * 0.48)
        for outlineRecursions in range (0, 7):
            corners = print_outline(outlineRecursions,True) #prints the outline except for a corpus
            if height == start or height == finish - 1:
                fill_area_vertical(corners['x1'], corners['y2'], corners['x2'], corners['y1'], 0.48)

def method2():
    fill_out_to_in(0, 8)

if __name__=='__main__':
    g = init_printer()
    init_shape_lib(g)
    prepare_layer1()
    set_tool(0)
    method2()
    finish_printing()