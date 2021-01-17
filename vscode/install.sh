#!/bin/bash

sudo snap install --classic code

ln -s $(pwd)/../../vscode/vsc_settings.json $HOME/.config/Code/User/settings.json
function install {
  name="${1}"
  code --install-extension ${name} --force
}
