# Path to your oh-my-zsh installation.	
export ZSH="/home/$USER/.oh-my-zsh"	
 
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes	
#ZSH_THEME="robbyrussell"	
ZSH_THEME="pi"
#ZSH_THEME="fino"
#ZSH_THEME="lambda"	

export VISUAL="/usr/bin/vim"	
export EDITOR="$VISUAL"	

# Would you like to use another custom folder than $ZSH/custom?	
# ZSH_CUSTOM=/path/to/new-custom-folder	

# Standard plugins can be found in ~/.oh-my-zsh/plugins/*	
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/	
# Example format: plugins=(rails git textmate ruby lighthouse)	
plugins=(	git	zsh-autosuggestions	)	
source $ZSH/oh-my-zsh.sh	

# ALIASES AND FUNCTIONS
# SYSTEM GENERAL COMMANDS	
  rbn(){sudo /sbin/reboot}	
  sdn(){sudo /sbin/shutdown -h now}	
  crd(){ssh -C $1@$2 -p $3 ncdu -o- / | ncdu -f-} #check remote disk	

  alias pgpg="ping 8.8.8.8"	
  alias zc="sudo vim ~/.zshrc"	
  alias rf="sudo rm -rf" #remove folder	
  alias ds="youtube-dl --extract-audio --audio-format mp3 $1 -o '~/Music/%(title)s.%(ext)s'"	
  alias sshdstart="sudo systemctl start sshd"	
  alias sshdenable="sudo systemctl enable sshd --now"	
  alias sshdstop="sudo systemctl stop sshd"	
  alias sshdstatus="sudo systemctl status sshd"	
  alias sshdrestart="sudo systemctl restart sshd"	
  alias sstart="sudo systemctl start $1"	
  alias sstop="sudo systemctl stop $1"	
  alias sstatus="sudo systemctl status $1"	
  alias srestart="sudo systemctl restart $1"	

  alias wiki="~/wiki/wiki.sh"	
  alias env="sudo redshift -O 3000" #enabling night view	
  alias dnv="sudo redshift -x" #disabling night view	
  alias fkw="sudo rm ~/.config/KeeWeb/runtime-data.json"	
  alias wanwan="curl https://ipinfo.io/ip"	
  alias rn="sudo systemctl restart NetworkManager.service"	
  alias keyus="setxkbmap us intl"	
  alias keybr="setxkbmap -layout br -model abnt2"	
  alias sw="nmcli dev wifi list"
  alias cw="sudo /usr/bin/nmtui"  
  alias systeminfo="inxi -Fxz"	
  alias l="ls -liar"
  alias bl="acpi -V" #check battery info  

  alias .="cd .."	
  alias ..="cd ../../"	
  alias ...="cd ../../../"	
  alias ....="cd ../../../../"	
  alias .....="cd ../../../../../"	

# TMUX RELATED	
  tns(){tmux new -s $1 -d}	
  tas(){tmux attach -t $1}	
  tls(){tmux ls}	
  tks(){tmux kill-session -t $1}	

# RCLONE RELATED	
  rclr(){rclone listremotes}	
  rcmo(){mkdir ~/$1 ; xdg-open ~/$1 ; rclone mount $1:/ ~/$1 ; umount ~/$1 >/dev/null 2>&1 ; rm -rf ~/$1}	

# NORD RELATED	
  nc(){nordvpn connect}	
  ncus(){nordvpn connect United_States}	
  nd(){nordvpn disconnect}	
  ns(){nordvpn status}	

# FUNCTIONS 
  ppp(){python3 $PWD/$1}	
  run(){$PWD/$1} #run local script without ./	
  lesser(){less -N -I $1} #better alternative for cat 	
  dp(){trizen -S $1 --noconfirm} #download package	
  rp(){sudo pacman -Rcnsu $1 --noconfirm} #Removing a package and its dependencies	
  ru(){sudo pacman -R $(pacman -Qdtq) --noconfirm} #Removing unnecessary dependencies	
  mkcd(){mkdir -pv "$1"; cd "$1"} #Creating folder (including parents) and entering the fresly created folder	
  sf(){sudo rsync -avz --progress "$1" "$2"} #syncfolder - syncs folder path 1 to folder path 2	
  sp(){[[ $2 = "" ]] && trizen -Ss $1 || trizen -Ss $1 | grep $2} #search package	
  hs(){history | grep $1} #search commands in history	
  ii(){pacman -Q $1} #checking whether a package is installed	
  ft(){timedatectl set-ntp true} #fix time
  sl(){du -sh ./*} #local folder and files sizes
  ml(){watch -n 1 'du -h --max-depth=0 ./*' --time} #local monitoring
  sk(){ssh-copy-id -i $1 $2} #send ssh keys to remote
  ck(){ssh-keygen -t rsa -b 4096} #create ssh keys locally
  pk(){cat ~/.ssh/id_rsa.pub}
  ms(){sudo sshfs -o allow_other $1 $2} #mount remote ssh filesystem locally
  us(){sudo umount $1} #umount file system
  mf(){[ $1 != "" ] && watch --interval 1 du -sh $1 || watch --interval 1 du -sh $PWD/} #monitor remote or local folder
  mainconfpush(){cd ~/mainconf && git add . && git commit -m "$1" && git push origin master && cd -} ##pushing mainconf to git
  mainconfpull(){cd ~/mainconf && git pull && cd -}
  gitssh(){git remote set-url origin git@github.com:$1/$2} #set git remote for ssh	
  githttp(){git remote set-url origin https://github.com/$1/$2.git} #set git remote for http.

  alias i3config="sudo vim ~/.config/i3/config"
  alias cdi3="cd ~/i3"
  alias cdmc="cd ~/mainconf"	
  alias mainconf="~/mainconf/mainconf.sh"	
  findip(){echo " -- IP FOUND: "$(sudo arp-scan $1 | grep $2 | cut -f 1)}	
  findmac(){echo "-- MAC FOUND: "$(sudo arp-scan $1 | sed -n '3p' | cut -f 2,3)}		
  cl(){clear}	
  alias brltousd="~/mainconf/scripts/brltousd.sh"
  alias usdtobrl="~/mainconf/scripts/usdtobrl.sh"	
  dr(){echo "DR: $(curl -s https://www.x-rates.com/table/\?from\=USD\&amount\=1 | grep ";to=BRL" | awk '{print $3}' | cut -c58-61)"} #check current dollar rate

# UPDATES	
  alias um="sudo pacman-mirrors --fasttrack 5 && sudo pacman -Syyu --noconfirm"	
  alias upup="sudo pacman -Syyuu"	
