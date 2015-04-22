#!/bin/zsh
# Author: Blynxy
# Arch, OSX, *nix with openssh
ssh -L 5901:localhost:5902 "$1"