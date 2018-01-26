#Update
dnf -y update

# RPM Fusion Repo
dnf install -y https://download1.rpmfusion.org/free/fedora/rpmfusion-free-release-$(rpm -E %fedora).noarch.rpm https://download1.rpmfusion.org/nonfree/fedora/rpmfusion-nonfree-release-$(rpm -E %fedora).noarch.rpm

#Basic stuff
dnf install -y mc nano htop iftop nmap clusterssh dialog
dnf install -y unace unrar zip unzip sharutils uudeview arj cabextract file-roller unzip

#Networking
dnf install -y curl
dnf install -y openvpn NetworkManager-openvpn NetworkManager-openvpn-gnome
dnf install -y filezilla axel
dnf install -y whois mtr traceroute
dnf install -y wireshark
dnf install -y owncloud-client 

#Editors / code
dnf install -y vim
dnf install -y meld
dnf install -y git subversion

#Mutlimedia
dnf install vlc

#Admin
dnf install -y ansible sshpass
dnf install -y remmina remmina-plugins-rdp rdesktop

#OS / other
dnf install -y plank
dnf install -y shutter
dnf install -y keepass
#dnf install -y undistract-me
dnf install -y wine
dnf install -y gnome-tweak-tool
dnf install tilix -y

#Cisco Anyconnect fix
dnf install -y pangox-compat

#Python modules
dnf install -y python-pip python3-pip python-virtualenv python-ldap python-requests python3-requests 

#Virt
dnf install -y VirtualBox

#Themes
dnf install -y numix-gtk-theme numix-icon-theme
cd /tmp
git clone https://github.com/keeferrourke/capitaine-cursors.git
cd capitaine-cursors/
cp -pr dist/ /usr/share/icons/capitaine-cursors

#Java
#manual

# Sublime Text 3
rpm -v --import https://download.sublimetext.com/sublimehq-rpm-pub.gpg
dnf config-manager --add-repo https://download.sublimetext.com/rpm/stable/x86_64/sublime-text.repo
dnf check-update
dnf install -y sublime-text

#Visual Studio Code
rpm --import https://packages.microsoft.com/keys/microsoft.asc
sh -c 'echo -e "[code]\nname=Visual Studio Code\nbaseurl=https://packages.microsoft.com/yumrepos/vscode\nenabled=1\ngpgcheck=1\ngpgkey=https://packages.microsoft.com/keys/microsoft.asc" > /etc/yum.repos.d/vscode.repo'
dnf check-update
dnf -y install code

#Spotify
dnf config-manager --add-repo=http://negativo17.org/repos/fedora-spotify.repo
dnf check-update
dnf install -y spotify-client

# Cleaning
dnf clean all
