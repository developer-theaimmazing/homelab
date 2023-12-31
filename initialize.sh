#!/bin/bash
sudo apt update
sudo apt full-upgrade -y
sudo apt autoremove -y

curl -sSL https://get.docker.com | sh
sudo usermod -aG docker $USER

cd /opt
mkdir homelab
cd homelab
wget https://raw.githubusercontent.com/developer-theaimmazing/homelab/main/docker-compose.yaml

mkdir mosquitto
cd mosquitto
wget https://raw.githubusercontent.com/developer-theaimmazing/homelab/main/mosquitto.conf
exit