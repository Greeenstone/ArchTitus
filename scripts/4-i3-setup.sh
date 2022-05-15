# get i3 package group
sudo pacman -S i3

# for media keybindings
sudo pacman -S playerctl

# get one of the two
sudo pacman -S dmenu
# yay -S rofi-dmenu

# networkmanager gui
sudo pacman -S network-manager-applet

# wallpaper
sudo pacman -S feh

# monitors
sudo pacman -S arandr autorandr 

# i3blocks config
cp /etc/i3blocks.conf .config/i3/

# clipboard manager
yay -S rofi-greenclip
# greenclip daemon
# greenclip print
# add keybindings for:
# rofi -modi "clipboard:greenclip print" -show clipboard -run-command '{cmd}'
# greenclip clear



sudo pacman -S ncdu #(disk analyzer)
sudo pacman -S ranger #(tui based file manager)
sudo pacman -S scrot #(screenshot)
sudo pacman -S dunst #(notification daemon)
sudo pacman -S libnotify
sudo pacman -S libnotify
sudo pacman -S light
sudo pacman -S networkmanager
sudo pacman -S pamixer #(for audio control)
sudo pacman -S feh #(for wallpaper)
sudo pacman -S ttc-iosevka # font
sudo pacman -S otf-font-awesome #font
yay xst-git

CDIR=~/ArchTitus/configs/config_files/
for dir in dunst i3 i3blocks rofi scripts sound bluetooth; do
rm -r .config/${dir}
ln -rs ${CDIR}/${dir} ~/.config/
done

# copy all files from "$CDIR/homedir" to "~/"
for f in `ls $CDIR/homedir/`; do
rm -r ~/$f
ln -rs ${CDIR}/homedir/$f ~/$f
done
