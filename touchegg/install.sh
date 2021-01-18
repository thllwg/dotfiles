#!/bin/bash

pip3 install lastversion
lastversion JoseExposito/touchegg --download 
sudo apt install -y ./touchegg_*.deb
sudo rm ./touchegg_*.deb