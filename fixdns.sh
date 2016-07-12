#!/bin/zsh
cd /tmp/
curl -o resolv.conf -L "https://api.opennicproject.org/geoip/?resolv&ipv=4"
sudo mv resolv.conf /etc/

