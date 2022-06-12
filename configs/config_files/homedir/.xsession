#!/bin/bash

# set rate for keyboardrepeat  (250ms delay and 45Hz)
xset r rate 250 45

# let caps be 3rd level modifier

setxkbmap -option
setxkbmap -option caps:hyper
setxkbmap -option lv3:win_switch
# setxkbmap -option lv3:lwin_switch
# setxkbmap -option lv3:rwin_switch

# for albert to accept icons
export QT_QPA_PLATFORMTHEME=qt5ct

export MASTER_THESIS_DIR_LGRAZ=/home/lukas/Documents/ETH/MASTER_THESIS
