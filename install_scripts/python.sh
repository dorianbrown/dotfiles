#!/bin/bash

sudo dnf -y install python3-virtualenv
virtualenv-3 -p /usr/bin/python3 ~/workspace/venvs/python3

source ~/workspace/venvs/python3/bin/activate
pip install pandas jupyterlab seaborn bokeh matplotlib
deactivate
