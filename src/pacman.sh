#!/bin/bash

sudo pacman -Syu --noconfirm && \
sudo pacman -S --noconfirm \
    neofetch \
    make \
    git \
    vim \
    neovim \
    sudo \
    emacs \
    trash-cli \
    zsh \
    tmux \
    bat \
    openssh

# install jump
sudo pacman -S --noconfirm base-devel
git clone https://aur.archlinux.org/jump.git $HOME/jump
cd $HOME/jump
makepkg -s --noconfirm
sudo pacman -U --noconfirm jump*.pkg.tar.zst
rm -rf $HOME/jump
