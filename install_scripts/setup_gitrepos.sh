#! /bin/bash

# Setup git variables
git config --global user.name "Dorian Brown"
git config --global user.email dorianstuartbrown@gmail.com

# Cloning repositories
cd ~/workspace
git clone https://github.com/dorianbrown/dorianbrown.github.io 
git clone https://github.com/fivethirtyeight/data data_538

cd -
