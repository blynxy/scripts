#!/bin/bash
reflector -c 'United States,Canada' --protocol http,https --latest 20 --sort rate --save /etc/pacman.d/mirrorlist