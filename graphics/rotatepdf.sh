#!/bin/zsh
# Author: Blynxy
# About: Rotate pdf retaining decent quality
# requires: imagemagick
convert -rotate $1 -density 300x300 -compress lzw $2 $3