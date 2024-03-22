#!/bin/bash -e
################################################################################
##  File:  extras.sh
##  Desc:  Installs a couple more tools via APT
################################################################################

# Install Extras
printf "\n\t🐋 Installing Extras 🐋\t\n"
apt-get update -y -qq
apt-get install -y \
    fd-find \
    ripgrep \
    curl \
    wget \
    sed \
    moreutils \
    jq \
    xq \
    zsh \
    cmake \
    apt-utils \
    snap \

printf "\n\t🐋 Installed Extras 🐋\t\n"
