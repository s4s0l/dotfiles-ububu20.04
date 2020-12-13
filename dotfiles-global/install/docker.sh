#!/bin/bash
set -e
systemctl enable docker
systemctl start docker

echo $DOT_USER
usermod -a -G docker $DOT_USER
