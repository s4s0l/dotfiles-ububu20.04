#!/bin/bash
set -e

wget https://github.com/ogham/exa/releases/download/v0.9.0/exa-linux-x86_64-0.9.0.zip -O /tmp/exa.zip
unzip /tmp/exa.zip -d /tmp
mv /tmp/exa-linux-x86_64 /usr/bin/exa
rm -f /tmp/exa.zip
