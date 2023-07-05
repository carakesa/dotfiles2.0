 # Dotfiles 2.0

## WIP:

5 July 23 @ 1640
edit of ~/.config/bspwm/themes/default/polybar/colors.ini
    Note that the defualt bluetooth module for polybar throws an error for the foreground color.  Must investigate further!


4 July 23 @ 2336EST
mpris stuffs:  
  * mpris polybar playerctl modules -- *most* don't have native GUI/rofi support.  (ie. Mpris-playerctl-tail)
  * Gotroller -- has a gui, but throws a panic.  opened github issue about int/uint panic.

wal
  * Previous configs used the Xresources file.
  * Xresources was storing values from Wal for access by other programs (ie. Polybar, alacritty)
        How the heck did I have that setup?


    
4 July 23 @ 1418 EST
    create venv @ ~/.local/share/python-venv/*
    installed pip gpi
    still failing!



Attempting a cleaner/nicer and less convoluted selection.

Still managed via RCM (rcup, rcdn)

## Dependencies

* Fish (shell)
    - Tide prompt
    - 
* For shells and aliases:
    - exa
    - less
    - bat
* bspwm
    - bspwm
    - rofi
    - polybar
    - picom

* playerctl

* Wal 
    - More eye candy to play with everythign else (WIP)
* mpris
* slimpris (optional, for Logitech Media Server integrations)
* zscroll (for polybar mpris)


* redshift
* lunarvim
    - requires neovim first!
* xcape
    - supplements the keyboard layouts


## Assumptions:
These should be fairly system agnostic, however the base is (currently) created from Archcraft's BSPWM configs

~/.config/bspwm/   contains the configs not only from bspwm, but also:
   - alacritty
   - picom
   - dunst
   - themes/*/  <- these have Polybar and rofi settings
   - xsettings.d

## Configs include:

* aliases for shells (bash, but can be called by others I think)
* bashrc
* xprofile (swap caps/ctrl + xcape)

* config
    * fish
    * bspwm 
        sxhkdrc
        picom.conf
        polybar
    * lvim
        config.lua
    * redshift.conf
      Polybar
        scripts
            mpris redshift
* local/bin/
    vicheck.sh
    pipes.sh
    fzf.bash
    colors.sh
            
### extras
These are more system configs than user files.  Assume /etc unless otherwise stated.
    xorg.conf.d/
        90-touchpad.conf  (reference - setup natural scroll)
    thinkfan-configs
        sudo cp thinkfan.conf /etc/thinkfan.conf #fan curves
        sudo cp modprobe-thinkfan.conf /etc/modprobe.d/thinkfan.conf #module with flags enabled

### Host Specific
* host-Yoga
    local/bin
        autorotate.sh 
        chargelimit.sh
        nochargelimit.sh

## Workflow
* Added fisher, fzf, puffer fish, sponge to Fish
* 
