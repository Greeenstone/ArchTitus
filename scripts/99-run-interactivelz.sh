# setup GIT
    sudo pacman -S --noconfirm --needed gnome-keyring libsecret libgnome-keyring # needed for vscode-ssh authentifications
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
    pip3 install radian

# R setup
    touch ~/.profile
    sudo pacman -S --noconfirm --needed gcc-fortran r # to compile pacages
    # sudo chmod -R 777 /usr/lib/R/library # make library free for alls
    # temp="`R --version`" && temp=${temp:10:3}
    # echo "export R_LIBS_USER=/home/lukas/R/x86_64-pc-linux-gnu-library/$temp" >> ~/.profile
    # install.packages("languageserver") # for vscode linting

# rclone (execute by hand)
    # go here: https://console.cloud.google.com/apis/credentials?project=psyched-circuit-342100
    # to get:
        # clienet id: 449832985581-n8rqi12a5c4d7r0buhrfh727rf3ngdfc.apps.googleusercontent.com
        # client secret: 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

    rclone config  
    # answer with:
        # n
        # gdrive
        # drive
        # 449832985581-n8rqi12a5c4d7r0buhrfh727rf3ngdfc.apps.googleusercontent.com
        # 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
        # 1
        # <accept all defaults from here>  &  <confirm in browser>

    rclone copy gdrive:AcerDacer ~/Documents
    # setup cron-job
    # ...

