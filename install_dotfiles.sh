#!/bin/bash

# Cleanup for testing
rm -rf ~/repos

sudo apt-get update
sudo apt-get upgrade

# Setup dotfiles

# Install R and Rstudio
sudo apt-get install r-base
wget https://download1.rstudio.org/rstudio-1.0.143-amd64.deb
sudo apt-get install libjpeg62 libgstreamer0.10-0 libgstreamer-plugins-base0.10-0
sudo dpkg -i rstudio-*.deb
rm rstudio-*.deb
# Requirements tidyverse
sudo apt-get install libxml2-dev libssl-dev libcurl4-openssl-dev

# Install atom
sudo add-apt-repository ppa:webupd8team/atom
sudo apt update; sudo apt install atom

# Install Chrome
sudo apt-get install libxss1 libappindicator1 libindicator7
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
sudo dpkg -i google-chrome*.deb
rm google-chrome*.deb

sudo apt-get remove firefox

# Install Steam
wget -E http://media.steampowered.com/client/installer/steam.deb
sudo dpkg -i steam.deb

# Install TLP
sudo add-apt-repository ppa:linrunner/tlp
sudo apt-get update
sudo apt-get install tlp tlp-rdw
# Run TLP
sudo tlp start

# Install packages
sudo apt-get install vlc gnome-tweak-tool tmux nmon vim
# Remove unneeded software

sudo apt-get remove

# Install developer tools
sudo add-apt-repository ppa:ubuntu-desktop/ubuntu-make
sudo apt-get update
sudo apt-get install ubuntu-make
# Install tools
sudo umake ide idea pycharm
