# bumblebee-status
    yay -S bumblebee-status

### PulseAudio applet --small icon in the systray
   yay -S pa-applet-git


### LXAppearance
# With LXAppearance you can change themes, icons, cursors or fonts.
#    sudo pacman -S lxappearance
#     sudo pacman -S arc-gtk-theme
#     sudo pacman -S papirus-icon-theme

### Customize LightDM
    # At this point you can also customize the look of LigthDM. You can blow your mind
    # by adding Papirus icons and Arc theme in LightDM, just by editing its config file.
    # sudo nvim /etc/lightdm/lightdm-gtk-greeter.conf
    # In this file you have to add these lines
    # [greeter]
    # theme-name = Arc-Dark
    # icon-theme-name = Papirus-Dark
    # background = #2f343f
    # `font-name = Whatever` to this file.




# # i3blocks config
# cp /etc/i3blocks.conf .config/i3/

# clipboard manager
    yay -S rofi-greenclip
    # greenclip daemon
    # greenclip print
    # add keybindings for:
    # rofi -modi "clipboard:greenclip print" -show clipboard -run-command '{cmd}'
    # greenclip clear



sudo pacman -S ncdu #(disk analyzer)
sudo pacman -S light
sudo pacman -S ttc-iosevka # font
sudo pacman -S otf-font-awesome #font

~/ArchTitus/link_config.sh



# Theming
sudo pacman -S papirus-icon-theme
sudo pacman -S lxappearance
yay -S sweet-gtk-theme


####### somehow not working :(
# # keyring auto-login -- no password
# ## source: https://bbs.archlinux.org/viewtopic.php?id=117367
# sudo pacman -S slim 
# sudo systemctl enable --now slim.service
# sudo sed -i 's/^#auto_login\s\{3,\}no/auto_login          yes/' /etc/slim.conf


# backlight (acer screenbrightnes)
    # allow user to change brightness with the command:
    #    echo 5 > /sys/class/backlight/acpi_video0/brightness
    sudo usermod -a -G video lukas
    sudo cp $HOME/ArchTitus/config/etc/udev/rules.d/backlight.rules /etc/udev/rules.d/backlight.rules
    # replacement for xbacklight
    sudo pacman -S acpilight 


# redshift (night light)
    sudo pacman -S redshift

# alternating layout
    git clone https://github.com/olemartinorg/i3-alternating-layout.git temp_github_dir
    mv temp_github_dir/alternating_layouts.py ~/ArchTitus/configs/config_files/config_dirs/i3/ 
    rm -rf temp_github_dir/ # remove repository
    chmod +x ~/ArchTitus/configs/config_files/config_dirs/i3/alternating_layouts.py 

# albert
    yay -S albert.bin
    # let albert open with vs-code
    xdg-mime default visual-studio-code.desktop inode/directory

# file explorer
    # ranger
    install ranger
    install w3m  #image preview
    
    # lf
    yay -S lf
    install alacritty
    install ueberzug
    # dependencies for viewr:
        for i in ("ueberzug" "lynx" "bat" "atool" "mediainfo" "ffmpegthumbnailer" "odt2txt"); do
            install $i
        done