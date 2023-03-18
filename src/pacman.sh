#!/bin/bash

sudo pacman -Syu --noconfirm && pacman -S --noconfirm \
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
    openssh \
    # for jump
    base-devel

# install jump
git clone https://aur.archlinux.org/jump.git $HOME/jump
cd $HOME/jump
makepkg -s --noconfirm
sudo pacman -U --noconfirm jump*.pkg.tar.zst
rm -rf $HOME/jump
