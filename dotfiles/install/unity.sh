#!/usr/bin/env bash
set -e
curl "https://public-cdn.cloud.unity3d.com/hub/prod/UnityHub.AppImage" -o "/tmp/UnityHub.AppImage"
rm -Rf ~/.opt/unity-hub
mkdir -p ~/.opt/unity-hub
mv /tmp/UnityHub.AppImage ~/.opt/unity-hub
chmod +x ~/.opt/unity-hub/UnityHub.AppImage
mkdir -p ~/.opt/unity-editor
cat <<X > ~/.local/share/applications/unity.desktop
[Desktop Entry]
Categories=Development;IDE;
Comment=Unity 3D Hub
Exec="/home/sasol/.opt/unity-hub/UnityHub.AppImage" %f
Icon=/home/sasol/.dotdrop-mx/resources/unity-icon.svg
Name=Unity3D Hub
StartupWMClass=unity-hub
Terminal=false
Type=Application
Version=1.1
X