#!/bin/bash

sudo snap install -y --classic code

ln -s $(pwd)/../../vscode/vsc_settings.json $HOME/.config/Code/User/settings.json
function install {
  name="${1}"
  code --install-extension ${name} --force
}

code --install-extension alexcvzz.vscode-sqlite
code --install-extension formulahendry.vscode-mysql
code --install-extension hediet.vscode-drawio
code --install-extension James-Yu.latex-workshop
code --install-extension ms-azuretools.vscode-cosmosdb
code --install-extension ms-azuretools.vscode-docker
code --install-extension ms-python.python
code --install-extension ms-python.vscode-pylance
code --install-extension ms-toolsai.jupyter
code --install-extension ms-vscode-remote.remote-containers
code --install-extension ms-vscode.azure-account
code --install-extension redhat.java
code --install-extension ritwickdey.LiveServer
code --install-extension VisualStudioExptTeam.vscodeintellicode
code --install-extension vscjava.vscode-java-debug
code --install-extension vscjava.vscode-java-dependency
code --install-extension vscjava.vscode-java-pack
code --install-extension vscjava.vscode-java-test
code --install-extension vscjava.vscode-maven