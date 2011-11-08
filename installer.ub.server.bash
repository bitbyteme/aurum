#! /bin/sh

sudo echo '\c'
# adding apt-get restricted repositories by editing /etc/apt/sources.list file
if ! [ -f '/etc/apt/sources.list.bak' ]; then  
   sudo chmod 777 /etc/apt
   sudo mv /etc/apt/sources.list /etc/apt/sources.list.bak
   sudo cat /etc/apt/sources.list.bak | sed -e 's;^# deb http; deb http;' -e 's;^# deb-src ; deb-src ;' > /etc/apt/sources.list
   sudo chmod 755 /etc/apt
fi

sudo apt-get -y update
sudo apt-get -y upgrade
pkgsBasic='build-essential curl wget git-core openssl libssl-dev openssh-server openssh-client'
pkgsExtra='vim-nox zsh ' 

sudo apt-get -y install $pkgsBasic $pkgsExtra 
sudo apt-get -y autoremove

echo 'press enter to reboot, or ^C to quit \c'; read
reboot




