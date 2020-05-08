#!/bin/bash

    while [ true ];
    do

    clear
    echo "$(tput bold)$(tput setaf 7)"
    echo "|==============|> i3 <|==============|"
    echo "#(0) - Exit"
    echo "#(1) - Update System (Mirrors and packages)"
    echo "#(2) - Update Packages"
    echo "#(3) - Enable config files"
    echo "#(4) - Install ZSH"
    echo "#(5) - Update .ZSHRC"
    echo "#(6) - Setup GIT User"
    echo "#(7) - Download Wiki"
    echo "|-------------------------------------------|"
    read -p "Option: " menuChoice
    

    case $menuChoice in
            0) ~/i3/mainmenuscripts/exiti3.sh ; exit ;;
            1) ~/i3/mainmenuscripts/updatesystem.sh ;;
            2) ~/i3/mainmenuscripts/updatepackages.sh ;;
            3) ~/i3/mainmenuscripts/enableconfigfiles.sh ;;
            4) ~/i3/mainmenuscripts/installzsh.sh ;;
            5) ~/i3/mainmenuscripts/updatezshrc.sh ;; 
            6) ~/i3/mainmenuscripts/setupgituser.sh ;;
            7) ~/i3/mainmenuscripts/downloadwiki.sh ;;
            *) ~/i3/mainmenuscripts/invalidoption.sh ;;
    esac

    done
