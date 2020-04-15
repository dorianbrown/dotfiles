#!/bin/bash

# Removing unneeded apps
sudo apt -y remove ubuntu-web-launchers thunderbird

# Install Vanilla Gnome3
sudo apt -y install gnome-session
sudo update-alternatives --config gdm3.css

# Graphics drivers PPAs
# Intel
sudo add-apt-repository -y ppa:oibaf/graphics-drivers
# Nvidia
sudo add-apt-repository -y ppa:graphics-drivers/ppa

# Standard ubuntu apps
sudo apt -y install gnome-tweaks git vim htop arc-theme tmux vlc chrome-gnome-shell curl wget flatpak apt-transport-https

# Adding flathub to flatpak repos
flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo
flatpak install -y flathub org.gnome.Geary org.gtk.Gtk3theme.Arc-Darker

# AppimageLauncher
sudo add-apt-repository -y ppa:appimagelauncher-team/stable
sudo apt -y install appimagelauncher

# Darktable
sudo sh -c "echo 'deb http://download.opensuse.org/repositories/graphics:/darktable/xUbuntu_19.10/ /' > /etc/apt/sources.list.d/graphics:darktable.list"
wget -nv https://download.opensuse.org/repositories/graphics:darktable/xUbuntu_19.10/Release.key -O Release.key
sudo apt-key add - < Release.key
sudo apt update
sudo apt -y install darktable
rm Release.key

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

# Paper Icons
# TODO: Manuall install now

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

# VS Code
curl https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor > packages.microsoft.gpg
sudo install -o root -g root -m 644 packages.microsoft.gpg /usr/share/keyrings/
sudo sh -c 'echo "deb [arch=amd64 signed-by=/usr/share/keyrings/packages.microsoft.gpg] https://packages.microsoft.com/repos/vscode stable main" > /etc/apt/sources.list.d/vscode.list'
sudo apt update
sudo apt -y install code
rm packages.microsoft.gpg
# Dotnet-sdk
wget https://packages.microsoft.com/config/ubuntu/19.10/packages-microsoft-prod.deb -O packages-microsoft-prod.deb
sudo dpkg -i packages-microsoft-prod.deb
rm packages-microsoft-prod.deb
sudo apt update
sudo apt -y install dotnet-sdk-3.1
# Mono
sudo apt install gnupg ca-certificates
sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
echo "deb https://download.mono-project.com/repo/ubuntu stable-bionic main" | sudo tee /etc/apt/sources.list.d/mono-official-stable.list
sudo apt update
sudo apt -y install mono-devel
