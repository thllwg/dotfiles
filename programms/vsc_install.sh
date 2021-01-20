#!/bin/bash

# Install apt repository and signing key to enable auto-updating using the system's package manager
wget -qO- https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor > packages.microsoft.gpg && \
  sudo install -o root -g root -m 644 packages.microsoft.gpg /etc/apt/trusted.gpg.d/ && \
  sudo sh -c 'echo "deb [arch=amd64,arm64,armhf signed-by=/etc/apt/trusted.gpg.d/packages.microsoft.gpg] https://packages.microsoft.com/repos/code stable main" > /etc/apt/sources.list.d/vscode.list'

sudo apt -y install apt-transport-https
sudo apt update
sudo apt -y install code # or code-insiders

ln -s $(pwd)/../../vscode/vsc_settings.json $HOME/.config/Code/User/settings.json

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