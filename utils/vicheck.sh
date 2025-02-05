#!/bin/bash
#Check for lvim, nvim, then vim, then vi, and run;

if [ -f ~/.local/bin/nvim ]; then
  ## if [ -f ~/.local/bin/lvim ]; then  **This was the first if for Lunarvim, not currently maintained**
  "$HOME/.local/bin/lvim $1"
elif [ -f /sbin/nvim ]; then
  nvim $1
elif [ -f /sbin/vim ]; then
  vim $1
elif [ -f /sbin/vi ]; then
  vi $1
fi
