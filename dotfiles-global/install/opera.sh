#!/bin/bash
set -e

wget -qO- https://deb.opera.com/archive.key | sudo apt-key add -
echo "deb [arch=i386,amd64] https://deb.opera.com/opera-stable/ stable non-free"  | sudo tee /etc/apt/sources.list.d/opera.list
apt update
apt install opera-stable
