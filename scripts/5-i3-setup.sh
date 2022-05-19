
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

sudo pacman -S papirus-icon-theme


