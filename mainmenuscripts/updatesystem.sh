#!/bin/bash

        clear
        
        echo "$(tput bold)$(tput setaf 7)"
        echo "|==============|> i3 <|==============|"
        echo "|------------> UPDATE SYSTEM <-------------|"
        sleep 1

            sudo pacman -Syyuu --noconfirm

        clear