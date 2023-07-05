(cat ~/.cache/wal/sequences &)
clear #find better way to remove the ugly output of above commands
# source colors.sh file to fix fzf colors and ls command's colors
source ~/.cache/wal/colors.sh
# Ls color is ugly. Modify it using
eval "$(dircolors -p | perl -pe 's/^((CAP|S[ET]|O[TR]|M|E)\w+).*/$1 00/' | dircolors -)"

# # pywal
# if [ -d ~/.cache/wal ]; then
#   if [ -f ~/.config/wpg/sequences ]; then
#     (cat ~/.config/wpg/sequences &)
#   else
#     (cat ~/.cache/wal/sequences &)
#   fi

#   source ~/.cache/wal/colors-tty.sh
#   source ~/.cache/wal/colors.sh
# fi
