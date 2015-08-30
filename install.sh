#!/bin/bash
set -e

ln -s $(pwd)/.zshrc ~/.zshrc
ln -s $(pwd)/.profile-zsh ~/.profile-zsh
ln -s $(pwd)/.gitconfig ~/.gitconfig
touch ~/.profile-metocean
chmod +x ~/.profile-metocean