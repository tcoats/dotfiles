#!/bin/bash
set -e

ln -s $(pwd)/.zshrc ~/.zshrc
ln -s $(pwd)/.gitconfig ~/.gitconfig
touch ~/.profile-metocean
chmod +x ~/.profile-metocean
touch ~/.profile-osx
chmod +x ~/.profile-osx
touch ~/.profile-ubuntu
chmod +x ~/.profile-ubuntu