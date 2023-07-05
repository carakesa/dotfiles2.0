
# pywal
if [ -d ~/.cache/wal ]; then
  if [ -f ~/.config/wpg/sequences ]; then
    (cat ~/.config/wpg/sequences &)
  else
    (cat ~/.cache/wal/sequences &)
  fi

  source ~/.cache/wal/colors-tty.sh
  source ~/.cache/wal/colors.sh
fi
