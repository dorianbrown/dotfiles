#!/bin/bash

sudo apt -y install python-dev python-pip virtualenv
sudo pip install --upgrade pip

version=$(python3 --version | tr -d [:space:] | tr [:upper:] [:lower:])
virtualenv -p /usr/bin/python3 ~/workspace/venvs/${version}

source ~/workspace/venvs/${version}/bin/activate

pip install pandas jupyterlab seaborn bokeh matplotlib
deactivate
