#!/bin/bash

# i3 configuration will use this script to launch a terminal (keep it in $HOME/bin/)
# make sure to set PROMPT_COMMAND to pwd > /tmp/whereami. This allows the terminal to open up in the
# last directory you changed to.

directory=$(cat /tmp/whereami)
kitty -d $directory


