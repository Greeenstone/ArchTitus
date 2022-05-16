
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

CDIR=~/ArchTitus/configs/config_files/
for dir in dunst i3 i3blocks rofi scripts sound bluetooth; do
rm -r ~/.config/${dir}
# ln -rs ${CDIR}/${dir} ~/.config/
done

# copy all files from "$CDIR/homedir" to "~/"
for f in `ls $CDIR/homedir/`; do
rm -r ~/$f
# ln -rs ${CDIR}/homedir/$f ~/$f
done

sudo pacman -S papirus-icon-theme

# Terminal
sudo pacman -S rxvt-unicode
sudo pacman -S urxvt-perls
yay -S urxvt-resize-font-git
