# setup GIT
    sudo pacman -S gnome-keyring libsecret libgnome-keyring # needed for vscode-ssh authentifications
    git config --global user.email "lukasgraz99@gmail.com"
    git config --global user.name "LukasGraz"
    ssh-keygen -t ed25519 -C "lukasgraz99@gmail.com"
    sudo chmod 755 ~/.ssh
    sudo chmod 600 ~/.ssh/id_ed25519
    ssh-add ~/.ssh/id_ed25519
    # copy output of
    cat ~/.ssh/id_ed25519.pub  
    # and past the output to `GitHub -> Settings -> SSH and GPG Keys`
    ssh -T git@github.com # confirm with yes


# PIP / Python-modules
    pip install radian

# R setup
    touch ~/.profile
    sudo pacman -S --noconfirm --needed gcc-fortran # to compile pacages
    sudo chmod -R 777 /usr/lib/R/library # make library free for alls
    # temp="`R --version`" && temp=${temp:10:3}
    # echo "export R_LIBS_USER=/home/lukas/R/x86_64-pc-linux-gnu-library/$temp" >> ~/.profile

# rclone
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

