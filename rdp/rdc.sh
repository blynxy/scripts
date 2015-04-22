#!/bin/zsh
# Author: Blynxy
# Arch

export DISPLAY=:0.0
rdesktop -g 1440x900 -P -z -x l -r sound:off -u $1 $2
