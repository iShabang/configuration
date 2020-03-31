#! /bin/bash

# This script is meant to run when you login. For Ubuntu, I put this in /etc/profile.d/ which will
# autorun the script on login.

feh --bg-fill ~/.config/wallpaper/wall.png
compton -b
$HOME/.config/polybar/launch.sh
