 
#!/usr/bin/env bash
set -e
source ./.lib.sh
chmod +x ./dotfiles/install/*.sh
mkdir -p ./tmp
prepare_dir_dotfile "./dotfiles/install" ".." > "./tmp/install.yaml"

./dotdrop.sh install --cfg=config.yaml --profile=sasol-laptop
