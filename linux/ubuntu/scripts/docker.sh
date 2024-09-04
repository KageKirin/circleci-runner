#!/bin/bash -e
################################################################################
##  File:  docker.sh
##  Desc:  Installs docker CLI for Docker-in-Docker
##         Must be run as non-root user after homebrew
################################################################################

# Install Docker CLI
printf "\n\t🐋 Installing Docker 🐋\t\n"

### copy-pasted from the official documentation
### https://docs.docker.com/engine/install/ubuntu/
curl -fsSL https://get.docker.com -o get-docker.sh
sudo sh get-docker.sh
dockerd-rootless-setuptool.sh install

printf "\n\t🐋 Installed Docker 🐋\t\n"
