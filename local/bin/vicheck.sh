#!/bin/bash
#Check for nvim, then vim, then vi, and run;


if [ -f /sbin/lvim ]; then
  lvim $1
elif [ -f /sbin/nvim ]; then
  nvim $1
elif [ -f /sbin/vim ]; then
  vim $1
elif [-f /sbin/vi ]; then
  vi $1
fi

