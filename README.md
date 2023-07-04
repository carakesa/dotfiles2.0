 # Dotfiles 2.0

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
* Wal 
    - More eye candy to play with everythign else (WIP)

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
    * lvim
        config.lua
    * redshift.conf
    
* extras
    xorg.conf.d/
        90-touchpad.conf  (reference - setup natural scroll)

* local/bin/
    vicheck.sh
    pipes.sh
    fzf.bash
    colors.sh

### Host Specific
* host-Yoga
    local/bin
        autorotate.sh 
        chargelimit.sh
        nochargelimit.sh


