# Project 1 - 3D printing
-------------------------
Simple shape implementations with different infill patterns



## G-code References
--------------------
[RepRap G-code wiki](http://reprap.org/wiki/G-code)

[G-code in Marlin firmware](https://github.com/MarlinFirmware/Marlin/wiki/G-Code-in-Marlin)


## Simulators
--------------
[Web-based simulator](https://nraynaud.github.io/webgcode/)

[gcode.ws](http://gcode.ws)

[Java based closed source simulator](http://gcodeprintr.dietzm.de/#GCodeSimulator)

## Installation
----------------
1. Download the current python version to your system and install it.
https://www.python.org/downloads/

2. Next install numpy. Use the command:
`pip install numpy`

3. Next install mecode. Download it from GitHub.
https://github.com/jminardi/mecode and run the setup.py which installs mecode on your system.

4. Install Repetierhost software - to interact with the printer
[Repetierhost download](http://www.repetier.com/download-now/)

## Files
--------

### Mecode-wrapper
This directory contains the implementation of the different filling patterns
mecode scripts. All general filling patterns (triangle, rectangle, etc.) are
placed in `shape_implementations.py` while the other files contain applications
of the basic shape filling patterns to fill the "One" shape in different ways.

###gCode
This directory provides the generated .gcode files from the Mecode-wrapper
directory. You can copy their contents to your simulator or 3D printer to get a
visualization of the printed object.

### stl_files
This directory contains 3d model files of number '1', which can be fed into
programs like `Slic3r` to generate the gcode.
