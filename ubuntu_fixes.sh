#!/bin/bash

# Implementing fix: https://askubuntu.com/questions/1175731/using-degraded-feature-set-udp-for-dns-server-8-8-8-8-on-new-ubuntu-installa
sudo rm /etc/resolv.conf
sudo ln -s /run/systemd/resolve/resolv.conf /etc/resolve.conf
