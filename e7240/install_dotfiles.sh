#!/bin/bash

# Url's defintion
popcorntime_url=https://get.popcorntime.sh/build/Popcorn-Time-0.3.10-Linux-64.tar.xz

sudo apt-get update
sudo apt-get upgrade

# Add all PPA's
for f in ppa:marutter/rrutter ppa:ubuntu-desktop/ubuntu-make ppa:linrunner/tlp ppa:snwh/pulp;
  do sudo add-apt-repository -y $f;
done

sudo apt-get update

# Install all apt packages
sudo apt-get install r-base tlp tlp-rdw ubuntu-make arc-theme python-pip
python-dev build-essential xfonts-terminus

# Setup pip
sudo pip install --upgrade pip
sudo pip install --upgrade --user virtualenv
# Get python configured
mkdir ~/workspace
python_path="which python3"
virtualenv -p ${python_path} ~/workspace/python3
source ~/workspace/python3/bin/activate
pip install pandas jupyter notebook scikit-learn seaborn bokeh
deactivate

# Install R and Rstudio
wget https://download1.rstudio.org/rstudio-1.0.143-amd64.deb
sudo apt-get install libjpeg62 libgstreamer0.10-0 libgstreamer-plugins-base0.10-0
sudo dpkg -i rstudio-*.deb
rm rstudio-*.deb
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

# Install popcorn time
wget -E $popcorntime_url
mkdir ~/Popcorn-Time
tar xf Popcorn-Time-0.3.10-Linux-64.tar.xz -C Popcorn-Time

# Symlink all dotfiles
# TODO: delete current config files
for file in .bashrc .tmux.conf .vimrc .bash_aliases
do
    if [ -f ~/${file}]
    then
        mv ~/${file} ~/${file}.copy
    fi
    ln -s files/${file} ~/${file}
done

# Install vundle
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

# Setup git configs for pushing
git config --global user.email "dorianstuartbrown@gmail.com"
git config --global user.name "Dorian Brown"

# The manual stuff
#Set Windows + Interface to Ubuntu Medium/Regular size 10
#Monospace: Ubuntu Mono Regular size 13
#Set wallpaper to hexagon
#Install plugins
#  Extensions
#  Alternatetab
#  Applications menu
#  Dash to Dock
#  Multi monitors add-on
#  removable drive menu
#  Topicons plus
