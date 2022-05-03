#!/usr/bin/env bash

# setup GIT
git config --global user.email "lukasgraz99@gmail.com"
git config --global user.name "LukasGraz"
ssh-keygen -t ed25519 -C "lukasgraz99@gmail.com"
ssh-add ~/.ssh/id_ed25519
# copy output of
cat ~/.ssh/id_ed25519.pub  
# and past the output to `GitHub -> Settings -> SSH and GPG Keys`
ssh -T git@github.com # confirm with yes

# disable Wayland
sudo sed -i 's/^#WaylandEnable=false/WaylandEnable=false/' /etc/gdm/custom.conf


# fix KEYMAP
gsettings reset org.gnome.desktop.input-sources sources
gsettings set org.gnome.desktop.input-sources sources "[('xkb', 'de+nodeadkeys')]"

# SHORTCUTS
python3 ~/ArchTitus/scripts/add_gnome_shortcut.py 'open guake' 'guake' '<Super>e'

# PIP / Python-modules
pip install radian


# setup touchpad with natural scrolling
    sudo pacman -S --noconfirm --needed   xf86-input-synaptics
    sudo cp ~/ArchTitus/configs/etc/X11/xorg.conf.d/70-synaptics.conf /etc/X11/xorg.conf.d/70-synaptics.conf


#######################################
###  EXTENSIONS
#######################################
# get gnome version
temp=`gnome-shell --version`
GNOME_VERSION=${temp:12:2} && echo "gnome version: $GNOME_VERSION"

# get extension installer:
yay -S --noconfirm --needed gnome-shell-extension-installer

printf "$GNOME_VERSION\nq" | gnome-shell-extension-installer 779 # clipboard-indicator
printf "$GNOME_VERSION\nq" | gnome-shell-extension-installer 277 # impatience
printf "$GNOME_VERSION\nq" | gnome-shell-extension-installer 3357 # material shell
printf "$GNOME_VERSION\nq" | gnome-shell-extension-installer 1460 # vitals (cpu/ram/storage/..)
printf "$GNOME_VERSION\nq" | gnome-shell-extension-installer 1287 # unite (remove window top panel)
printf "$GNOME_VERSION\nq" | gnome-shell-extension-installer 1112 # screenshot tool
printf "$GNOME_VERSION\nq" | gnome-shell-extension-installer 3088 # Extension list
printf "$GNOME_VERSION\nq" | gnome-shell-extension-installer 906 # Sound output chooser

