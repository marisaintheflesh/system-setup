#!/bin/sh

CODENAME="bookworm"

# ERASES sources.list FIRST!
echo "" > /etc/apt/sources.list

# -----------------------------

echo "deb http://deb.debian.org/debian/ $CODENAME main non-free-firmware non-free contrib" >> /etc/apt/sources.list
echo "deb-src http://deb.debian.org/debian/ $CODENAME main non-free-firmware non-free contrib" >> /etc/apt/sources.list

echo "" >> /etc/apt/sources.list

echo "deb http://security.debian.org/debian-security $CODENAME-security main non-free-firmware non-free contrib" >> /etc/apt/sources.list
echo "deb-src http://security.debian.org/debian-security $CODENAME-security main non-free-firmware non-free contrib" >> /etc/apt/sources.list

echo "" >> /etc/apt/sources.list

echo "deb http://deb.debian.org/debian/ $CODENAME-updates main non-free-firmware non-free contrib" >> /etc/apt/sources.list
echo "deb-src http://deb.debian.org/debian/ $CODENAME-updates main non-free-firmware non-free contrib" >> /etc/apt/sources.list

# -----------------------------

# add i386 for 32-bit packages on amd64
dpkg --add-architecture i386

apt update
apt upgrade
apt dist-upgrade

apt install apt-transport-https apt-utils apt-xapian-index
