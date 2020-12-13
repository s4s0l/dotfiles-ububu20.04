#!/bin/bash
set -e

#https://github.com/sharkdp/bat/issues/938
sudo apt install -o Dpkg::Options::="--force-overwrite" bat ripgrep
sudo apt install \
	ncdu \
	mc \
	jq \
	keepassxc \
	arandr \
	ctags \
	ranger \
	atop \
	bat \
	fasd \
	kgpg \
	ripgrep \
	fzf \
	yakuake \
	remmina \
	zip \
	shellcheck \
	sox \
	libncurses5 \
	telnet

