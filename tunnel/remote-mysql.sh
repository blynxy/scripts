#!/bin/zsh
ssh -L 3316:localhost:3306 "$1"