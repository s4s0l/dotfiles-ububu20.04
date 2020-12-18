#!/bin/bash
set -e

wget -q https://packages.microsoft.com/keys/microsoft.asc -O- | sudo apt-key add -
echo "deb [arch=amd64] https://packages.microsoft.com/repos/vscode stable main" | sudo tee /etc/apt/sources.list.d/vscode.list
apt update
apt install code

