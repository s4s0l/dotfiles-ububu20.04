set -e

wget https://download-installer.cdn.mozilla.net/pub/thunderbird/releases/78.6.0/linux-x86_64/pl/thunderbird-78.6.0.tar.bz2 -O /tmp/thunderbird.tar.bz2
tar -xf /tmp/thunderbird.tar.bz2 -C ~/.opt/
rm -f ~/.bin-opt/thunderbird
ln -s ~/.opt/thunderbird/thunderbird ~/.bin-opt/thunderbird
wget https://www.iconfinder.com/icons/78832/download/png/256 -O ~/.opt/thunderbird/icon.png
cat <<EOT > ~/.local/share/applications/thunderbird.desktop
[Desktop Entry]
Name=Thunderbird
Version=78.6.0
Icon=/home/$DOT_USER/.opt/thunderbird/icon.png
X-Icon-Path=/home/$DOT_USER/.opt/thunderbird/icon.png
Exec=/home/$DOT_USER/.bin-opt/thunderbird
Terminal=false
Type=Application
EOT
chmod +x ~/.local/share/applications/thunderbird.desktop