#! /bin/bash

# backup and update config files
    # copy dirs from "$CDIR" to "$HOME/.config/"
    CDIR=$HOME/ArchTitus/configs/config_files/
    timestamp=$(date +%Y-%m-%d_%H-%M-%S)
    backup_dir="$HOME/.config/conf_backups/backup_$timestamp"
    mkdir -p $backup_dir

    for dir in dunst i3 i3blocks rofi scripts sound bluetooth terminator; do
    echo "removing and linking the director: $HOME/.config/$dir"
    cp -r $HOME/.config/${dir} $backup_dir
    rm -r $HOME/.config/${dir}
    ln -rs ${CDIR}/${dir} $HOME/.config/
    done

    # copy all files from "$CDIR/homedir" to "$HOME/"
    for f in `ls --almost-all $CDIR/homedir/`; do
    echo "removing and linking the file: $f"
    mkdir -p $backup_dir/homedir
    cp -r $HOME/$f $backup_dir/homedir
    rm -r $HOME/$f
    ln -rs ${CDIR}/homedir/$f $HOME/$f
    done

# update crontabs
crontab $HOME/.cronjobs
