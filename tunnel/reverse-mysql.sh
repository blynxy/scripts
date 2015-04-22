#!/bin/zsh
# Author: Blynxy
# MySQL server connect remote Webserver to local sql
# for long-term solution: autossh-mysql-tun.service
ssh -R 3306:localhost:3306 "$1"
