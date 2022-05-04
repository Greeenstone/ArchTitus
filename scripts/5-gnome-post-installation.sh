#!/usr/bin/env bash

## swap-file:
## execute as root
# sudo su
# cd /root
# dd if=/def/zero of=/swapfile bs=1M count=2048 status=progress
# chmod 600 /swapfile
# mkswap /swapfile
# cp /etc/stab /etc/fstab.bak
# echo '/swapfile none swap sw 0 0' | tee -a /etc/fstab
# mount -a

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



# get internet connection
#    printf 'station wlan0 connect "Krosse Krabbe 5GHz"\nsehrkomplex\nquit\n' | iwctl

# init extensions
init-extension () {
    # enables extensions and links to gsettings
    gnome-extensions enable $1 || echo "could not enable $1"
    files=`ls ~/.local/share/gnome-shell/extensions/$1/schemas/`
    for file in $files; do
        if [[ $file == *.xml ]]; then
            echo "$file"
            sudo cp ~/.local/share/gnome-shell/extensions/$1/schemas/$file /usr/share/glib-2.0/schemas/
        fi
    done;
}
init-extension clipboard-indicator@tudmotu.com
init-extension impatience@gfxmonk.net
init-extension material-shell@papyelgringo
init-extension Vitals@CoreCoding.com
init-extension unite@hardpixel.eu
init-extension extension-list@tu.berry
init-extension sound-output-device-chooser@kgshank.net
init-extension gnome-shell-screenshot@ttll.de

# compile schemas (which are linked)
sudo glib-compile-schemas /usr/share/glib-2.0/schemas/

# go here: https://console.cloud.google.com/apis/credentials?project=psyched-circuit-342100
# to get:
    # clienet id
    449832985581-n8rqi12a5c4d7r0buhrfh727rf3ngdfc.apps.googleusercontent.com
    #client secret
    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



# command start (execute by hand)
printf " 
n\n
gdrive\n
drive\n
449832985581-n8rqi12a5c4d7r0buhrfh727rf3ngdfc.apps.googleusercontent.com\n
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\n
1\n\n\n
n\n
y\n" | rclone config
rclone copy gdrive:AcerDacer ~/Documents
# setup cron-job
# ...

# for link-forwarding (open links with firefox)
# sudo pacman -S xdg-utils 

# get gsettings
gsettings list-recursively > ~/ArchTitus/configs/gnome/temp_gsettings
cat ~/ArchTitus/configs/gnome/modified_gsettings | while read line
do
  gsettings set $line
done