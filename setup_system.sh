#!/bin/bash

full_install="False"
if [ "$1" -eq "minimal" ]
then
    full_install="True"
fi

# Url's defintion
popcorntime_url="https://get.popcorntime.sh/build/Popcorn-Time-0.3.10-Linux-64.tar.xz"

sudo apt-get update
sudo apt-get upgrade

# Add all PPA's
for f in ppa:marutter/rrutter ppa:ubuntu-desktop/ubuntu-make ppa:linrunner/tlp ppa:snwh/pulp;
do
    sudo add-apt-repository -y $f;
done

sudo apt-get update

# Install all apt packages
sudo apt-get install r-base tlp tlp-rdw ubuntu-make arc-theme python-pip
sudo apt-get install python-dev build-essential xfonts-terminus gnome-terminal

# Setup pip
sudo pip install --upgrade pip
sudo apt-get install virtualenv
# Get python configured
virtualenv -p /usr/bin/python3 ~/workspace/python3
source ~/workspace/python3/bin/activate
pip install pandas jupyter notebook scikit-learn seaborn bokeh
deactivate

# Requirements tidyverse
sudo apt-get install libxml2-dev libssl-dev libcurl4-openssl-dev

# Remove games
sudo apt-get remove aisleriot gnome-mahjongg gnome-mines gnome-sudoku

# Run TLP
sudo tlp start

# Install packages
# Also need to add multiverse repository?
sudo apt-get install vlc gnome-tweak-tool tmux nmon vim

# Install developer tools
sudo umake ide pycharm

# Icon theme
sudo apt-get install paper-icon-theme paper-cursor-theme paper-gtk-theme


if [ $full_install -eq "True" ]
then
    # Install popcorn time
    wget -E $popcorntime_url
    mkdir ~/Popcorn-Time
    tar xf Popcorn-Time-0.3.10-Linux-64.tar.xz -C Popcorn-Time
fi

# Symlink all dotfiles
source install_dotfiles.sh

# Install vundle
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

# Setup git configs for pushing
git config --global user.email "dorianstuartbrown@gmail.com"
git config --global user.name "Dorian Brown"

for repo in blog_posts js_posts translating_tools
do
    git clone https://github.com/dorianbrown/$repo ~/workspace/$repo
done

if [ $full_install -eq "True" ]
then
    # Install spotify
    sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 0DF731E45CE24F27EEEB1450EFDC8610341D9410
    echo deb http://repository.spotify.com stable non-free | sudo tee /etc/apt/sources.list.d/spotify.list
    sudo apt-get update
    sudo apt-get install spotify-client
fi

