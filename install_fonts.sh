#!/bin/bash

echo "Copy fonts"
cp -r files/fonts* $HOME/.fonts
fc-cache -fv
