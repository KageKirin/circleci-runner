#!/bin/bash -e
################################################################################
##  File:  brew.sh
##  Desc:  Installs Homebrew
##  Supply chain security: Homebrew - checksum validation
################################################################################
# source: https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh


useradd -m -s /bin/bash linuxbrew
usermod -aG sudo linuxbrew
mkdir -p /home/linuxbrew/.linuxbrew
chown -R linuxbrew: /home/linuxbrew/.linuxbrew

NONINTERACTIVE=1 /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

brew help
brew doctor
