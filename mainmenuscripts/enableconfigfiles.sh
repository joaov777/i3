#!/bin/bash

clear
        
		echo "$(tput bold)$(tput setaf 7)"
        echo "|==============|> i3 <|==============|"
        echo "|--------------> ENABLING CONFIG FILES <-------------|"
		sleep 1

        echo "Enabling clipboard manager..." ; sleep 1
        sudo cp ~/i3/varied/copyq/copyq.conf ~/.config/copyq/copyq.conf
        sudo ln -sf ~/i3/varied/copyq/copyq.conf ~/.config/copyq/copyq.conf
	sudo chown joao:joao ~/.config/copyq/copyq.conf

        echo "Enabling screenshot tool..." ; sleep 1
        sudo cp ~/i3/varied/flameshot/flameshot.ini ~/.config/Dharkael/flameshot.ini
        sudo ln -sf ~/i3/varied/flameshot/flameshot.ini ~/.config/Dharkael/flameshot.ini
        sudo chown joao:joao ~/.config/Dharkael/flameshot.ini

        echo "Enabling Picom compositor..." ; sleep 1
        sudo cp ~/i3/varied/picom/picom.conf /etc/xdg/picom.conf
        sudo ln -sf ~/i3/varied/picom/picom.conf /etc/xdg/picom.conf
        sudo chown joao:joao /etc/xdg/picom.conf

        echo "Enabling py3status bars..." ; sleep 1
        sudo cp ~/i3/varied/py3status/py3statusbars/i3status.conf /etc/i3status.conf
        sudo cp ~/i3/varied/py3status/py3statusbars/i3status2.conf /etc/i3status2.conf

        sudo ln -sf ~/i3/varied/py3status/py3statusbars/i3status.conf /etc/i3status.conf
        sudo ln -sf ~/i3/varied/py3status/py3statusbars/i3status2.conf /etc/i3status2.conf
        
        sudo chown joao:joao /etc/i3status.conf
        sudo chown joao:joao /etc/i3status2.conf

        echo "Enabling rofi launcher..." ; sleep 1
        sudo cp ~/i3/varied/rofi/config ~/.config/rofi/config
        sudo ln -sf ~/i3/varied/rofi/config ~/.config/rofi/config
        sudo chown joao:joao ~/.config/rofi/config

        echo "Enabling termite..." ; sleep 1
        sudo cp ~/i3/varied/termite/current_theme /etc/xdg/termite/config
        sudo ln -sf ~/i3/varied/termite/current_theme /etc/xdg/termite/config
        sudo chown joao:joao /etc/xdg/termite/config

        echo "Enabling zathura..." ; sleep 1
        sudo cp ~/i3/varied/zathura/zathurarc ~/.config/zathura/zathurarc
        sudo ln -sf ~/i3/varied/zathura/zathurarc ~/.config/zathura/zathurarc
        sudo chown joao:joao ~/.config/zathura/zathurarc

        echo "Enabling tap to click..." ; sleep 1
        sudo cp ~/i3/varied/EnableTapToClick_touchpad/90-touchpad.conf /etc/X11/xorg.conf.d/90-touchpad.conf
        sudo ln -sf ~/i3/varied/EnableTapToClick_touchpad/90-touchpad.conf /etc/X11/xorg.conf.d/90-touchpad.conf
        sudo chown joao:joao /etc/X11/xorg.conf.d/90-touchpad.conf

        echo "Enabling i3 config file..." ; sleep 1
        sudo cp ~/i3/varied/i3config/config ~/.config/i3/config
        sudo ln -sf ~/i3/varied/i3config/config ~/.config/i3/config
        sudo chown joao:joao ~/.config/i3/config
