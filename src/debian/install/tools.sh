#!/usr/bin/env bash
### every exit != 0 fails the script
set -e

echo "Install some common tools for further installation"
apt-get update
apt-get install -y vim wget net-tools locales bzip2 procps unzip zip curl git gnupg software-properties-common \
python3-numpy sudo

echo "Setting root password..."
echo 'root:vetgo' | chpasswd

echo "Cleaning up unnecessary files..."
apt-get clean -y

echo "Generating locales for en_US.UTF-8"
locale-gen en_US.UTF-8

echo "Updating locale settings"
update-locale LANG=en_US.UTF-8

echo "Locale setup complete. Current settings:"
locale
