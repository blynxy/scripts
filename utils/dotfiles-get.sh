#!/bin/bash

# Ensure a user is passed as an argument
if [ -z "$1" ]; then
  echo "Error: No user provided."
  echo "Usage: $0 <username>"
  exit 1
fi

GITHUB_USERNAME=$1
git clone --bare git@github.com:$GITHUB_USERNAME/dotfiles.git $HOME/.dotfiles
alias dotfiles='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'
dotfiles checkout
dotfiles config --local status.showUntrackedFiles no