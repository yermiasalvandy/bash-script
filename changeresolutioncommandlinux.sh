#!/bin/bash

# Check your output monitor using xrandr command

# Set Resolution
xrandr --newmode "1368x768_60.00"   85.25  1368 1440 1576 1784  768 771 781 798 -hsync +vsync

# Add Resolution
xrandr --addmode VGA-1 1368x768_60.00

# Change Resolution
xrandr --output VGA-1 --mode 1368x768_60.00
