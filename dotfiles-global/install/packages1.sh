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
	ripgrep \
	fzf \
	fd-find \
	yakuake \
	remmina \
	zip \
	shellcheck \
	sox \
	libncurses5 \
	telnet \
	curl \
	apt-transport-https \
	ca-certificates \
	software-properties-common

