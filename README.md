# Note to self - need to pull in bspwmrc configs from Yoga for 9th Workspace (gaming)


## Dotfiles 2.0

My dots are managed via RCM (rcup, rcdn).

Some 'unique' (IMHO settings)

* Use ~/Program/{foo} for Cargo, Ruby, Gems, Go
* neovim w/ LazyVim config as default editor
~~* LunarVIM as default editor~~


## Dependencies

* Fish (shell)
    - Tide prompt
    - Fisher (optional - Fish Shell Plugin Manager)
    - nnn.fish (Optional - Terminal File Manger)
    - functions.fish (aliases and things)
    
* For shells and aliases:
    - eza (was exa)
    - less
    - bat (aka batcat)
* bspwm
    - bspwm
    - rofi (menus)
    - polybar (status bar, etc)
    - picom (compositor)
    - maim (for screenshots with bspwmscripts)
    - dunst (notifications)
    - xfce4-power-manager
    - xfce-polkit

Optional, but for Polybar MPC controls
    - playerctl
    - mpris
    - slimpris (optional, for Logitech Media Server integrations)
    - zscroll (for polybar mpris)

Optional for colorschemes
* Wal 
    - More eye candy to play with everythign else
    - python-pywalfox (PyWal/Wal themes applied to Firefox)

Other Others
* Others
    - redshift
    - ~~lunarvim (requires neovim first!)~~
    - neovim
    - LazyVim (https://www.lazyvim.org/ - A different vim build)
    - ~~xcape~~ (optional; supplements the keyboard layouts)

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
    - Note: Fish Shell uses ~/.config/fish/functions.fish instead for aliases
* bashrc
* xprofile (swap caps/ctrl + ~~xcape~~)

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

* host-legion
*   conservationmode0.sh 
*   conservationmode1.sh

## Workflow
* Added fisher, fzf, puffer fish, sponge to Fish
* 

## Notes, Comments, etc: 

**Updates of Previous Notes**   

### 10 Jan 24 
**Note 1**  
Enabled Win11 to be seen from the boot loader again.  Kid keeps hogging the laptop now.  :(
  This negates the 23 July 23 update

**Note 2**
LazyVIM is still kinda nifty, I think LunarVIM loads faster with my current configs.  I'm alternating depending which configs I want at any given point in time, and both seem usable.
  Note that the Obsidian Plugin still only seems to be working in LazyVIM.

**Note 3**
Alternate Gitea site up and running!

#### (23 July 23) 
**Note 1**
Disabled os-prober in /etc/default/grub and set the grub timer to 0.
Then used efibootmgr to remove the windows boot entry before running 'update-grub'

  For those not in the know, it now 'looks' like Windows is gone, unless they read this note!

**Note 2** 
I started playing with LazyVIM.   Kinda nifty.  I still prefer lunarvim, but LazyVIM may have it's place as well --- particularly for the Obsidian.nvim plugin that I can't seem to get working in LVIM.



## WIP: -- May have been dropped!

10 Jan 24
**Re: July Notes**
  Archcraft as an OS overwrites the user configs (it does make backups) and I've not been tracking the changes well...  This impacts Polybar and Wal colorschemes in particular.

  Not been messing with mpris either.

---
6 July 23 @ 0127
attempt to add obsidian.nvim to LunarVim config -- throws errors about handlers....Look at later

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
* python-pywalfox



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
