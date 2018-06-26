#!/bin/bash

cd ~/workspace
git clone https://github.com/dorianbrown/dorianbrown.github.io

sudo dnf -y install ruby ruby-devel gcc zlib-devel
gem install bundler

echo "Ruby gems successfully installed!"
