#!/usr/bin/env bash
### every exit != 0 fails the script
set -e

echo "Installing Chromium Browser via APT..."

# Update package list
apt-get update

# Install Chromium via APT
apt-get install -y chromium

# Ensure chromium-browser symlink is correct
if ! [ -L /usr/bin/chromium-browser ]; then
    ln -s /usr/bin/chromium /usr/bin/chromium-browser
    echo "Created symbolic link for chromium-browser."
else
    echo "Symbolic link for chromium-browser already exists."
fi

echo "Chromium installation complete via APT!"
