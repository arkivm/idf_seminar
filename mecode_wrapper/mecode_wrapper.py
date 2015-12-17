#!/usr/bin/python

from mecode import G

"""
From: https://github.com/repetier/Repetier-Firmware/wiki/G-codes
Implemented Codes

G0 -> G1
G1 - Coordinated Movement X Y Z E
G4 - Dwell S or P
G20 - Units for G0/G1 are inches.
G21 - Units for G0/G1 are mm.
G28 - Home all axis or named axis.
G90 - Use absolute coordinates
G91 - Use relative coordinates
G92 - Set current position to cordinates given
RepRap M Codes

M104 S[targetTemperature] - Set extruder target temp
M105 - Read current temp
M106 S[Speed 0..255] - Fan on
M107 - Fan off
M109 - Wait for extruder current temp to reach target temp.
M112 - Emergency stop.
M114 - Display current position
Custom M Codes

M80 - Turn on Power Supply
M20 - List SD card
M21 - Init SD card
M22 - Release SD card
M23 - Select SD file (M23 filename.g)
M24 - Start/resume SD print
M25 - Pause SD print
M26 - Set SD position in bytes (M26 S12345)
M27 - Report SD print status
M28 - Start SD write (M28 filename.g)
M29 - Stop SD write
M80 - Turn on power supply
M81 - Turn off power supply
M82 - Set E codes absolute (default)
M83 - Set E codes relative while in Absolute Coordinates (G90) mode
M84 - Disable steppers until next move, or use S to specify an inactivity timeout, after which the steppers will be disabled. S0 to disable the timeout.
M85 - Set inactivity shutdown timer with parameter S. To disable set zero (default)
M92 - Set axis_steps_per_unit - same syntax as G92
M115 - Capabilities string
M140 S[TargetTemperature] - Set bed target temp
M190 - Wait for bed current temp to reach target temp.
M201 - Set max acceleration in units/s^2 for print moves (M201 X1000 Y1000)
M202 - Set max acceleration in units/s^2 for travel moves (M202 X1000 Y1000)
M203 - Set temperture monitor to Sx
M204 X[Kp] Y[Ki] Z[Kd] - Set PID parameter. Values are 100*real value!
M205 - Output EEPROM settings
M206 - Set EEPROM value
M231 S[OPS_MODE] X[Min_Distance] Y[Retract] Z[Backslash] F[ReatrctMove] - Set OPS parameter
M232 - Read and reset max. advance values
"""

rate = { 'move': 9000, 'print': 1100 }
g = G(extrude=True, extrusion_width=0.48, filament_diameter=1.75, setup=False, extrusion_multiplier=2)


def normal_move(x = None, y = None, z = None):
    """
    Perform a normal move with G0
    :param x: x param
    :param y: y param
    :param z: z param
    :return: none
    """
    args = 'F%d ' % rate['move']

    if x is not None:
        args += 'X%.6f ' % x
    if y is not None:
        args += 'Y%.6f ' % y
    if z is not None:
        args += 'Z%.6f' % z

    g.write('G0 ' + args)
    g.write('G1 F%d' % rate['print'])


def print_preamble():
    """
    Add preamble code to each file that gets generated
    :return:
    """
    g.write('M107 ; start with the fan off')
    g.write('G28 X0 Y0 ; home XY axes')
    g.write('G28 Z0 ; home Z')
    g.write('G92 X0 Y0 Z0 E0 ; reset software positions')
    g.write('G1 Z15.0 F180')
    g.write('T0')
    g.write('G92 E0 ; zero the extruded length')
    g.write('G1 E3 F200')
    g.write('G92 E0 ; zero the extruded length again')
    g.write('G1 F225')


def set_ecode_abs():
    """
    set ecode to absolute co-ordinates (This is the default setting)
    :return: none
    """
    g.write('M82')


def turn_fan_on(speed=0):
    """
    Control fan speed
    :param speed: speed
    :return: none
    """
    g.write('M106 S%d' % speed)


def set_bed_temp(temp=0):
    """
    Set the bed temperature
    :param temp: temperature value
    :return: none
    """
    g.write('M140 S%d' % temp)


def init_printer():
    """
    Initialize the printer
    a) start with absolute coordinates
    b) set ecode abs
    c) turn fan off
    d) set bed temperature
    e) set extruder temperature
    f) add preamble code
    :return: none
    """
    g.absolute()
    set_ecode_abs()
    turn_fan_on(0)
    set_bed_temp(40)
    set_extruder_temp(220, 0)
    set_extruder_temp(0, 1)
    print_preamble()
    return g


def set_extruder_temp(temp, ext):
    """
    Set Extruder temperature
    :param temp: temperature
    :param ext: extruder #number
    :return: none
    """
    g.write('M104 S%d T%d' % (temp, ext))

    if temp > 0:
        # Wait for extruder to reach the target temp
        g.write('M109 S%d T%d' % (temp, ext))


def home_axis(axis):
    """
    Homes individual axis
    :param axis: axis to be homed
    :return: none
    """
    if axis == 'x':
        g.write('G28 X0')
    elif axis == 'y':
        g.write('G28 Y0')
    elif axis == 'z':
        g.write('G28 Z0')


def home_all_axes():
    """
    Homes all axis
    :return: none
    """
    g.write('G28')


def prepare_layer1():
    """
    Prepares layer1 by lowering the Z to 0.1
    :return:
    """
    g.feed(rate['print'])
    g.write('G1 Z0.1')


def set_tool(tool):
    """
    Set the tool (extruder)
    :param tool: tool #number
    :return:
    """
    g.write('T%d' % tool)


def drop_bed(height):
    """
    Drop the bed. i.e., drop the Z axis
    :param height: how much to lower the bed (in mm)
    :return:
    """
    g.write('G0 Z%d F1200' %height)


def disable_motors():
    """
    Disable motors
    :return:
    """
    g.write('M84')


def finish_printing():
    """
    Add gcode to finish the printing, such as lowering the bed,
    reducing the extruder temperature to 0, disable motors
    :return:none
    """
    set_extruder_temp(0,0)
    set_extruder_temp(0,1)
    set_bed_temp()
    drop_bed(100)
    home_axis('x')
    disable_motors()
