#!/bin/sh

arg=$1
command="suspend-then-hibernate"
[ "$1" = "-h" ] && command="hibernate"
systemctl $command
