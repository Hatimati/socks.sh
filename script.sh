#!/bin/bash
# Get variables
# USER=$1
# KEY=$2
# PASS=$3

# update system
sudo apt-get update -y

# install packages
sudo DEBIAN_FRONTEND=noninteractive apt-get install docker.io -y
sudo DEBIAN_FRONTEND=noninteractive docker pull xkuma/socks5
sudo DEBIAN_FRONTEND=noninteractive docker run -d -p 1080:1080 xkuma/socks5

# disable password auth
#sudo sed 's/PasswordAuthentication yes/PasswordAuthentication no/' /etc/ssh/sshd_config
#sudo service sshd restart
