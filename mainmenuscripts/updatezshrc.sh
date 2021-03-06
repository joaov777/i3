#!/bin/bash

clear
        
		echo "$(tput bold)$(tput setaf 7)"
        echo "|==============|> i3 <|==============|"
        echo "|-------------> UPDATE .ZSHRC <------------|"
        sleep 1

	if [ -f ~/.zshrc ];
	then	
		echo ">>> File exists! Deleting!" ; sleep 1
		sudo rm ~/.zshrc
	fi
		
	echo ">>> File non-existent! Creating and updating!" ; sleep 1
	curl https://raw.githubusercontent.com/joaov777/mainconf/master/zsh/.zshrc > ~/.zshrc 
    ln -sf ~/i3/zsh/.zshrc ~/.zshrc

	clear
