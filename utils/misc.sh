
# Use nano as the system-wide editor
if which nano &> /dev/null; then
  export EDITOR="nano"
else
  export EDITOR="nano"
fi

# Load LS_COLORS
which dircolors &> /dev/null && eval $(dircolors ~/.dircolors)
# now, when we us `ls` we'll get solarized-colored files and directories!

# Turn on italics
if echo $TERM | grep 'tmux' &> /dev/null; then
  # The -x is required for "treat unknown capabilities as user-defined"
  tic -x ~/.tmux-256color.terminfo
elif echo $TERM | grep 'xterm' &> /dev/null; then
  # The -x is required for "treat unknown capabilities as user-defined"
  tic -x ~/.xterm-256color.terminfo
else
  export TERM=xterm-256color
fi
# Things will break if you don't have these terminfo changes applied on _every_
# host that you use; i.e., every box that you ssh into

# Max line-length in man pages (also respected by Vim's man.vim plugin!)
export MANWIDTH=80

source ~/.util/bat.sh
