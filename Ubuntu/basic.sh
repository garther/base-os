#!/bin/bash

#Basic stuff
apt install -y mc nano htop iftop nmap clusterssh dialog
apt install -y unace unrar zip unzip p7zip-full p7zip-rar sharutils rar uudeview mpack arj cabextract file-roller unzip

#Networking
apt install -y curl
apt install -y network-manager-openvpn network-manager-openvpn-gnome openvpn
apt install -y filezilla axel
apt install -y whois mtr traceroute
apt install -y wireshark
apt install -y owncloud-client 

#Editors / code
apt install -y vim
apt install -y meld
apt install -y git subversion

#Mutlimedia
apt-get install vlc browser-plugin-vlc -y

#Admin
apt install -y ansible sshpass
apt install -y remmina remmina-plugin-rdp rdesktop

#OS / other
apt install -y plank
apt install -y shutter
apt install -y keepass2
apt install -y undistract-me
apt install -y wine-stable

#Cisco Anyconnect fix
apt install -y libpangox-1.0-0

#Python modules
python-pip python3-pip python-virtualenv python-ldap python-requests python3-requests

#Virt
apt install -y virtualbox

#Themes
apt install -y numix-gtk-theme numix-icon-theme
cd /tmp
git clone https://github.com/keeferrourke/capitaine-cursors.git
cd capitaine-cursors/
cp -pr dist/ /usr/share/icons/capitaine-cursors

#Fix Wine in Open With
cd /usr/share/applications/
ln -s /usr/share/doc/wine-stable/examples/wine.desktop wine.desktop

#Java
add-apt-repository ppa:webupd8team/java -y
apt-get update
apt install oracle-java8-installer oracle-java8-unlimited-jce-policy oracle-java8-set-default -y

#Sublime Text
wget -qO - https://download.sublimetext.com/sublimehq-pub.gpg | sudo apt-key add -
echo "deb https://download.sublimetext.com/ apt/stable/" | sudo tee /etc/apt/sources.list.d/sublime-text.list
apt update
apt install -y sublime-text

#Tilix
add-apt-repository ppa:webupd8team/terminix -y
apt update
apt install tilix -y

#Visual Studio Code
curl https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor > microsoft.gpg
mv microsoft.gpg /etc/apt/trusted.gpg.d/microsoft.gpg
sh -c 'echo "deb [arch=amd64] https://packages.microsoft.com/repos/vscode stable main" > /etc/apt/sources.list.d/vscode.list'
apt-get update
apt-get -y install code

#Spotify
apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 0DF731E45CE24F27EEEB1450EFDC8610341D9410
echo deb http://repository.spotify.com stable non-free | sudo tee /etc/apt/sources.list.d/spotify.list
apt-get update
apt-get install -y spotify-client

#Cleaning
apt clean
