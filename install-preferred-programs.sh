#!/bin/sh

apt update

# VLC
apt install -y vlc vlc-plugin-access-extra vlc-plugin-bittorrent vlc-plugin-fluidsynth vlc-plugin-samba vlc-plugin-video-output

# other media (mpv, ffmpeg, fluidsynth, etc.)
apt install -y mpv ffmpeg fluidsynth

# LibreOffice
apt install -y libreoffice

# GIMP
apt install -y gimp gimp-data-extras gimp-cbmplugs gimp-gluas gimp-gmic gimp-gutenprint gimp-lensfun gimp-plugin-registry gimp-texturize

# InkScape
apt install -y inkscape

# FileZilla
apt install -y filezilla

# Remmina
apt install -y remmina remmina-plugin-rdp remmina-plugin-vnc

# uGet
apt install -y uget

# qBitTorrent
apt install -y qbittorrent

# Tor Browser Launcher + torsocks
apt install -y torbrowser-launcher torsocks

# ufw + gufw
apt install -y ufw gufw

# Kdenlive
apt install -y kdenlive

# yt-dlp
wget -P /usr/local/bin/ https://github.com/yt-dlp/yt-dlp/releases/latest/download/yt-dlp
chmod +x /usr/local/bin/yt-dlp
