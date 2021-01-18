#!/bin/bash

pip3 install lastversion
lastversion JoseExposito/touchegg --at github --assets --filter amd64.deb --download 
sudo apt install -y ./touchegg_*.deb
sudo rm ./touchegg_*.deb