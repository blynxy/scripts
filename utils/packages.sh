#/bin/bash
comm -23 <(pacman -Qqe | sort) <(pacman -Qqm | sort) > packages.txt
