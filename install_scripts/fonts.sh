#!/bin/bash

# Improve default fedora fonts
# su -c 'dnf install https://download1.rpmfusion.org/free/fedora/rpmfusion-free-release-$(rpm -E %fedora).noarch.rpm https://download1.rpmfusion.org/nonfree/fedora/rpmfusion-nonfree-release-$(rpm -E %fedora).noarch.rpm'
# sudo dnf copr enable dawid/better_fonts
# sudo dnf -y install fontconfig-enhanced-defaults fontconfig-font-replacements

# Install fira fonts
mkdir -p ~/.local/share/fonts

for type in Bold Light Medium Regular Retina; do
    wget -O ~/.local/share/fonts/FiraCode-${type}.ttf \
    "https://github.com/tonsky/FiraCode/blob/master/distr/ttf/FiraCode-${type}.ttf?raw=true";
done

fc-cache -f
