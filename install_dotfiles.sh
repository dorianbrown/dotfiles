#!/bin/bash

# Url's defintion
chrome_url=https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
steam_url=http://media.steampowered.com/client/installer/steam.deb
popcorntime_url=https://get.popcorntime.sh/build/Popcorn-Time-0.3.10-Linux-64.tar.xz

sudo apt-get update
sudo apt-get upgrade

# Symlink all dotfiles
rm -rf ~/.config/autostart
ln -s files/autostart ~/.config/autostart
ln -s files/.bashrc ~/.bashrc
ln -s files/.tmux.conf ~/.tmux.conf
ln -s files/.vimrc ~/.vimrc
ln -s files/notes.org ~/notes.org
ln -s files/libinput-gestures.conf ~/.config/libinput-gestures.conf
ln -s files/.bash_aliases ~/.bash_aliases

# Setup system
sudo apt-get install linux-image-4.11.0-13-generic linux-image-extra-4.11.0-13-generic intel-microcode
sudo apt-get install nvidia-384 prime-indicator-plus

# Add all PPA's
for f in ppa:marutter/rrutter ppa:webupd8team/atom ppa:ubuntu-desktop/ubuntu-make ppa:linrunner/tlp ppa:snwh/pulp;
  do sudo add-apt-repository $f;
done

sudo apt-get update

# Install all apt packages
sudo apt-get install r-base atom tlp tlp-rdw ubuntu-make arc-theme python-pip python-dev build-essential

# Setup pip
sudo pip install --upgrade pip
sudo pip install --upgrade virtualenv
# TODO: Add ipython and jupyter notebook installation
# TODO: Also add julia install

# Install R and Rstudio
wget https://download1.rstudio.org/rstudio-1.0.143-amd64.deb
sudo apt-get install libjpeg62 libgstreamer0.10-0 libgstreamer-plugins-base0.10-0
sudo dpkg -i rstudio-*.deb
rm rstudio-*.deb
# Requirements tidyverse
sudo apt-get install libxml2-dev libssl-dev libcurl4-openssl-dev

# Install Chrome
sudo apt-get install libxss1 libappindicator1 libindicator7
wget $chrome_rul
sudo dpkg -i google-chrome*.deb
rm google-chrome*.deb

# Remove games
sudo apt-get remove aisleriot gnome-mahjongg gnome-mines gnome-sudoku

# Install Steam
wget -E $steam_url
sudo dpkg -i steam.deb

# TODO: Install atom packages through apm

# Run TLP
sudo tlp start

# Install packages
# Also need to add multiverse repository?
sudo apt-get install vlc gnome-tweak-tool tmux nmon vim steam emacs

# Install Libinput-gestures
sudo apt-get install xdotool wmctrl libinput-tools
git clone http://github.com/bulletmark/libinput-gestures
cd libinput-gestures
sudo ./libinput-gestures-setup install
cd ..
rm -rf libinput-gestures
libinput-gestures-setup start
libinput-gestures-setup autostart

# Install developer tools
sudo umake ide idea
sudo umake ide pycharm

# Icon theme
sudo apt-get install paper-icon-theme
sudo apt-get install paper-cursor-theme
sudo apt-get install paper-gtk-theme

# Create mouse startup script
touch ~/.config/autostart/mouse_settings.sh
cat > ~/.config/autostart/mouse_settings.sh << EOF
#!/bin/bash
synclient PalmDetect=1 RightButtonAreaLeft=0 RightButtonAreaTop=0
echo "Mouse settings applied!"
EOF

chmod +x .config/autostart/mouse_settings.sh

# Install popcorn time
wget -E $popcorntime_url
mkdir ~/Popcorn-Time
tar xf Popcorn-Time-0.3.10-Linux-64.tar.xz -C Popcorn-Time

# The manual stuff
Set Windows + Interface to Ubuntu Medium/Regular size 10
Monospace: Ubuntu Mono Regular size 13
Set wallpaper to hexagon
Install plugins
  Alternatetab
  Applications menu
  Dash to Dock
  Multi monitors add-on
  removable drive menu
  Topicons plus
