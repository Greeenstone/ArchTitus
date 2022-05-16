# sudoers changes
    sudo sed -i -e '$aDefaults env_keep += PYTHONPATH' /etc/sudoers
    sudo sed -i -e '$aDefaults editor=/usr/bin/nano' /etc/sudoers


# remove bell-beeb
    echo 'blacklist pcspkr' | sudo tee -a /etc/modprobe.d/nobeeb.conf

# for ACER:
    # fix sound
    sudo rm /etc/modprobe.d/sound.conf
    echo "options snd-intel-dspcfg dsp_driver=1" | sudo tee -a /etc/modprobe.d/sound.conf > /dev/null
    echo "options snd-hda-intel model=dell-headset-multi" | sudo tee -a /etc/modprobe.d/sound.conf > /dev/null
    echo "options snd-hda-intel dmic_detect=0 " | sudo tee -a /etc/modprobe.d/sound.conf > /dev/null
    echo "options snd-hda-intel model=laptop-amic enable=yes" | sudo tee -a /etc/modprobe.d/sound.conf > /dev/null
    echo "options snd-hda-intel power_save=0" | sudo tee -a /etc/modprobe.d/sound.conf > /dev/null



### Improve laptop battery consumption
   sudo pacman -S tlp tlp-rdw powertop acpi
   sudo systemctl enable tlp
   sudo systemctl enable tlp-sleep
   sudo systemctl mask systemd-rfkill.service
   sudo systemctl mask systemd-rfkill.socket
    # If your laptop is a ThinkPad, also run this:
    #    sudo pacman -S acpi_call

### Enable SSD TRIM
   sudo systemctl enable fstrim.timer

# fix touchpad
    sudo cp ~/ArchTitus/configs/etc/X11/xorg.conf.d/70-synaptics.conf /etc/X11/xorg.conf.d/70-synaptics.conf


# bluetooth
    rfkill unblock all #unblock bluetooth is soft-blocked
    bltid="38:18:4C:DA:A8:55" # WH-910N
    bluetoothctl power on
    bluetoothctl pair $bltid
    bluetoothctl trust $bltid
    # bluetoothctl connect $bltid
    touch .connect_wh910n.sh
    cp ~/ArchTitus/configs/config_files/bluetooth/.connect_wh910n ~/.connect_wh910n.sh
    chmod +x .connect_wh910n.sh


# for latex
    sudo pacman -S cpanminus
    sudo cpan Unicode::GCString
    sudo cpan App::cpanminus
    sudo cpan YAML::Tiny
    sudo perl -MCPAN -e 'install "File::HomeDir"'

# keyboard layout
    localectl set-x11-keymap de acer_laptop nodeadkeys
    sudo localectl set-x11-keymap de acer_laptop nodeadkeys