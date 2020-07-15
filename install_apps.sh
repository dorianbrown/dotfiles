#!/bin/bash

# Removing unneeded apps
sudo apt -y remove thunderbird

# Install Vanilla Gnome3
sudo apt -y install gnome-session

# Powersaving stuff
sudo add-apt-repository ppa:linrunner/tlp
sudo apt install tlp powertop

# Graphics drivers PPAs
# Intel
sudo add-apt-repository -y ppa:oibaf/graphics-drivers
# Nvidia
sudo add-apt-repository -y ppa:graphics-drivers/ppa

# Standard ubuntu apps
sudo apt -y install gnome-tweaks git vim htop arc-theme tmux vlc curl wget flatpak apt-transport-https

# Adding flathub to flatpak repos
flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo
flatpak install -y flathub org.gnome.Geary org.gtk.Gtk3theme.Arc-Darker

# AppimageLauncher
sudo add-apt-repository -y ppa:appimagelauncher-team/stable
sudo apt -y install appimagelauncher

# Dbeaver
sudo add-apt-repository -y ppa:serge-rider/dbeaver-ce 
sudo apt -y install dbeaver-ce

# Lutris
sudo add-apt-repository -y ppa:lutris-team/lutris 
sudo apt -y install lutris
# Wine
sudo dpkg --add-architecture i386
wget -nc https://dl.winehq.org/wine-builds/winehq.key
sudo apt-key add winehq.key
sudo apt-add-repository 'deb https://dl.winehq.org/wine-builds/ubuntu/ eoan main'
sudo apt -y install --install-recommends winehq-stable
rm winehq.key

# Inkscape
sudo add-apt-repository -y ppa:inkscape.dev/stable
sudo apt -y install inkscape

# Spotify
curl -sS https://download.spotify.com/debian/pubkey.gpg | sudo apt-key add -
echo "deb http://repository.spotify.com stable non-free" | sudo tee /etc/apt/sources.list.d/spotify.list
sudo apt update
sudo apt -y install spotify-client

# Typora
wget -qO - https://typora.io/linux/public-key.asc | sudo apt-key add -
sudo add-apt-repository 'deb https://typora.io/linux ./'
sudo apt -y update
sudo apt -y install typora

# Egpu switcher
sudo add-apt-repository -y ppa:hertg/egpu-switcher
sudo apt -y install egpu-switcher

# Xournalpp
sudo snap install xournalpp
