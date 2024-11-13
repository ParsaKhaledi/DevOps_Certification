#!/bin/bash
# update and upgrade os
apt-get update
apt-get upgrade -y
# Install requirements 
sudo apt install -y \
    vim iptables-persistent bash-completion \
    wget curl git tmux

# install docker
which docker || { curl -fsSL https://get.docker.com | bash; }
sudo usermod -aG docker $USER
sudo usermod -aG docker vagrant
