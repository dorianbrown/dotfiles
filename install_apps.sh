#!/bin/bash

# Adding PPAs
sudo add-apt-repository -y ppa:geary-team/releases 
sudo add-apt-repository -y ppa:pmjdebruijn/darktable-release 
sudo add-apt-repository -y ppa:serge-rider/dbeaver-ce 
sudo add-apt-repository -y ppa:dhor/myway 
sudo add-apt-repository -y ppa:webupd8team/atom 
sudo add-apt-repository -y ppa:lutris-team/lutris 
sudo add-apt-repository -y ppa:snwh/ppa 
sudo add-apt-repository -y ppa:libreoffice/ppa 
sudo add-apt-repository -y ppa:inkscape.dev/stable

# Adding other sources
# Spotify
sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 931FF8E79F0876134EDDBDCCA87FF9DF48BF1C90
echo deb http://repository.spotify.com stable non-free | sudo tee /etc/apt/sources.list.d/spotify.list
# Typora
wget -qO - https://typora.io/linux/public-key.asc | sudo apt-key add -
sudo add-apt-repository 'deb https://typora.io/linux ./'

# Installing
sudo apt -y update
sudo apt -y install spotify-client geary darktable dbeaver-ce gpick gimp htop atom vim lutris paper-icon-theme arc-theme libreoffice tmux vlc
