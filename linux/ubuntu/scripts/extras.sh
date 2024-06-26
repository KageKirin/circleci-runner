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
    zsh \
    cmake \
    apt-utils \
    snap \
    dos2unix \
    build-essential \
    procps \
    file \
    gcc \


printf "\n\t🐋 Installed Extras 🐋\t\n"
