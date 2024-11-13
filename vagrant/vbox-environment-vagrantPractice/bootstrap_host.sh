#!/bin/bash
# update and upgrade os
apt-get update
apt-get upgrade -y
apt install -y vim software-properties-common bash-completion
add-apt-repository --yes --update ppa:ansible/ansible
sudo apt update 
apt install -y ansible
ssh-keygen -q -t rsa -N '' -f ~/.ssh/id_rsa <<<y >/dev/null 2>&1
 # For overwrite :
 # ssh-keygen -q -t rsa -N '' <<< $'\ny' >/dev/null 2>&1
