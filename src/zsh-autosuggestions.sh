#!/bin/bash

source "${PWD}/helper/logging.sh"

# https://github.com/zsh-users/zsh-autosuggestions
if  [ ! -d $HOME/.zsh/zsh-autosuggestions ]; then
    git clone https://github.com/zsh-users/zsh-autosuggestions ~/.zsh/zsh-autosuggestions
    echo -e "${SUCCESS}zsh-autosuggestions is installed:\n"
else
    echo -e "${INFO}zsh-autosuggestions is already installed\n"
fi
