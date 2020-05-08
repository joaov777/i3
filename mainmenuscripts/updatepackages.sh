#!/bin/bash

install_trizen() {
        
		clear
		echo "$(tput bold)$(tput setaf 7)"
        echo "|==============|> i3 <|==============|"
        echo "|------------> UPDATE PACKAGES <-----------|"

        if [ -z "$(pacman -Qi trizen)" ];
	    then
		        cd ~ 
                echo ">> Trizen is not installed!!" ; sleep 1
                echo ">> Installing Trizen AUR Helper" ; sleep 1
                git clone https://aur.archlinux.org/trizen.git >> /dev/null
                cd trizen
                makepkg -si

                cd ..
                rm -rf trizen

	    else
		        echo ">> trizen is installed!!" ; sleep 1
	    fi
}


packages_required=(
	trizen keeweb i3-gaps pdfarranger openssh tcpdump tldr fzf thunar \
	visual-studio-code-bin google-chrome bind-tools rofi dmenu brightnessctl \
	git tilda notepadqq gparted papirus-folders-git netctl acpi pulseaudio-alsa \
	filezilla telegram-desktop copyq flameshot ranger pulseaudio-ctl speedtest-cli \
	gedit pwgen openssh vim rdesktop i3lock i3lock-fancy-git mtr tmux iw py3status \
	nmap okular viewnior ncdu inxi htop otf-fira-mono nordvpn-bin nitrogen netctl \
	veracrypt papirus-icon-theme neofetch lxappearance vlc picom \
	arp-scan net-tools teamviewer rclone peek xorg-server xorg-apps xorg-init \ 
	imagewriter albert wget dnsutils xorg-xrandr arandr \ 
	pulseaudio-alsa pulseaudio-bluetooth bluez bluez-libs bluez-utils \
	noto-fonts ttf-ubuntu-font-family ttf-dejavu ttf-freefont ttf-liberation \
    ttf-droid ttf-inconsolata ttf-roboto terminus-font ttf-font-awesome \
	alsa-utils alsa-plugins alsa-lib pavucontrol lightdm lightdm-gtk-greeter 
	)
	
	#legacy_packages
	#mypaint typora whatmask vinagre glances ngrep broot brave barrier 
	#sipcalc ipcalc redshift bat etcher micro guake vagrant virtualbox-bin vinagre obs-studio glow youtube-dl

check_installation() {
	if [ -z "$(pacman -Qi $1)" ]; then
		echo ">> ERROR: Package $1 is NOT installed" ; sleep 1
	else
		echo ">> SUCCESS: Package $1 successfuly installed!!" ; sleep 1
	fi
}
	#installing trizen
	install_trizen

for pkg in "${packages_required[@]}"; do
	clear
	echo "$(tput bold)$(tput setaf 7)"
	echo "|==============|> MAINCONF <|==============|"
	echo "|------------> UPDATE PACKAGES <-----------|"

	if [ -z "$(pacman -Qi $pkg)" ]; then #in case it is not installed
		echo "|---> $pkg is not installed!!" 
		echo "|---> Installing $pkg..." ; sleep 1
			#trizen -S "$pkg" --noconfirm --needed &>/dev/null
			trizen -S "$pkg" --noconfirm --needed
	
			#checking whether a package has successfuly been installed -
			check_installation "$pkg"
	else
		echo "|---> $pkg is installed!!" ; sleep 1 #in case it is installed already
	fi
done

	#enabling sharing
	sudo pacman -S gvfs-smb thunar-shares-plugin-gtk3 --noconfirm --needed 
	sudo smb passwd -a joao

	#for Thunar
	sudo pacman -S gvfs gvfs-samba gvfs-mtp xdg-users-dirs --noconfirm --needed
	xdg-user-dirs-update

	#installing cursor themes
	sudo cp -r ~/i3/varied/cursors/* /usr/share/icons/

	#enabling bluetooth service
	sudo systemctl enable bluetooth --now

	#installing themes
	sudo cp -r ~/i3/varied/themes/* /usr/share/themes/

	#teamviewer related
	sudo teamviewer --daemon enable
	sudo systemctl enable teamviewerd.service --now

	#tmux related
	cp ~/i3/varied/tmux/.tmux.conf ~

	#nord related
	sudo systemctl enable nordvpnd --now

	#printing related - install manually on the 'print settings' GUI
	#sudo pacman -S manjaro-printer
	#sudo gpasswd $USER sys
	#sudo systemctl enable --now org.cups.cupsd.service

	sudo papirus-folders -C black 

    clear
