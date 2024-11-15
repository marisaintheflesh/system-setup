#!/bin/sh

apt update

# build tools
apt install build-essential cmake bison autoconf git dos2unix

# python-related
apt install python3 python3-venv python3-pip python-is-python3 virtualenv

# net tools
apt install wget curl ntpdate whois

# editor(s)
apt install nano vim
