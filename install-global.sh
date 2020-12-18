#!/usr/bin/env bash
set -e
source ./.lib.sh
chmod +x ./dotfiles-global/install/*.sh
mkdir -p ./tmp
prepare_dir_dotfile "./dotfiles-global/install" ".." > "./tmp/global-install.yaml"

sudo ./dotdrop.sh install --cfg=config-global.yaml --profile=sasol-laptop
