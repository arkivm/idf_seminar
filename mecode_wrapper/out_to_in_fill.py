from shape_implementations import *

print_width = 0.48 #printer head width
print_iterations = 12 #how many layers from outside to inside
#the out_to_in_fill is coded to generate the gcode for a 1-shape that is filled by going from the outside, to the inside in 12 iterations
#see (see move_shifted_to_center) to see the logic

def print_outline(print_width):
    done = False
    g.abs_move(x=10, y =0) #move to the first position
    i = 0
    while (i < print_iterations):
		#hard coded coordinates for printing the outmost outline follow
		#they get shifted towards the center (see move_shifted_to_center) with increasing i
		#you might notice that there is a symmetry - the destination point of one move is opposed to the destination point of another move
		#and vice-versa, wherever possible. This is desirable and helps printing over the same area again
        done = True
        done = done & move_shifted_to_center(10, 7, 40, 0, print_width, i)
        done = done & move_shifted_to_center(19, 7, 31, 0, print_width, i)
        done = done & move_shifted_to_center(19, 38, 31, 49, print_width, i)
        done = done & move_shifted_to_center(10, 35, 31, 49, print_width, i)
        done = done & move_shifted_to_center(10, 42, 31, 35, print_width, i)
        done = done & move_shifted_to_center(31, 49, 19, 35, print_width, i)
        done = done & move_shifted_to_center(31, 7, 19, 0, print_width, i)
        done = done & move_shifted_to_center(40, 7, 10, 0, print_width, i)
        done = done & move_shifted_to_center(40, 0, 10, 7, print_width, i)
        done = done & move_shifted_to_center(10, 0, 40, 7, print_width, i)
        i = i + 1
        done = done & move_shifted_to_center(10, 0, 40, 7, print_width, i) # move back to the first position
		#'done' is used to demonstrate the possibility to not iterate a set number of  print iterations
		# but instead stop printing when nothing was printed in this iteration (!experimental!)
    return

if __name__=='__main__':
	#overhead for initalizing the printer is included
    g = init_printer()
    init_shape_lib(g)
    prepare_layer1()
    set_tool(0)
    print_outline(print_width) # most important
    finish_printing()