#!/bin/bash

sudo dnf config-manager --add-repo=https://negativo17.org/repos/fedora-steam.repo
sudo dnf -y install steam
