#!/bin/bash

# Install R from CRAN repo
sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-keys E298A3A825C0D65DFD57CBB651716619E084DAB9
sudo add-apt-repository 'deb [arch=amd64,i386] https://cran.rstudio.com/bin/linux/ubuntu xenial/'

sudo apt update
sudo apt -y install r-base

# Install tidyverse + requirements
sudo apt -y install libxml2-dev libssl-dev libcurl4-openssl-dev
Rscript -e 'install.packages("tidyverse")'
