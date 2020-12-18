#!/bin/bash
set -e


curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -

echo "deb [arch=amd64] https://download.docker.com/linux/ubuntu focal stable" | sudo tee /etc/apt/sources.list.d/docker.list
apt update
apt-cache policy docker-ce
apt install docker-ce


echo $DOT_USER
usermod -a -G docker $DOT_USER
