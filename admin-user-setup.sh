#!/bin/bash
sudo - su
mkdir -p /home/$1
useradd -d /home/$1 $1
chown -R $1:$1 /home/$1
usermod -aG sudo $1
echo "$1 ALL=(ALL) NOPASSWD: ALL" >> /etc/sudoers
