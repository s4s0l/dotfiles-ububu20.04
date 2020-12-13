#!/bin/bash
set -e
sudo apt purge snapd
rm -rf /home/"${DOT_USER}"/snap
sudo rm -rf /snap
sudo rm -rf /var/snap
sudo rm -rf /var/lib/snapd
