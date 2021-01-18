#!/bin/bash

export ZSH=~/.oh-my-zsh

if [ ! -d $ZSH ]; then
  sh -c "$(wget -O- https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
  sudo mv ~/.zshrc $HOME/.dotfiles/zsh/oh-my-zshrc
fi
