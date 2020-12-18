#!/bin/bash
set -e
rm -rf ~/.fzf
rm -f ~/.fzf.bash
git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf
~/.fzf/install --all --no-update-rc
