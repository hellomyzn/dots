#!/bin/bash

source "${PWD}/helper/copy.sh"
source "${PWD}/helper/logging.sh"

# zsh files
ZSH_FILES=(.zshenv .zshrc .zsh_profile .zsh_alias)
for FILE in ${ZSH_FILES[@]}
do
    FROM="${PWD}/.config/zsh/${FILE}"
    TO=$HOME/$FILE
    copy_file $FROM $TO
done

# create .zsh dir
ZSH_DIR="${HOME}/.zsh"
if [ ! -d $ZSH_DIR ]; then
    mkdir $HOME/.zsh
    echo -e "${SUCCESS}.zsh is created:\n"
fi

# zsh auto suggestions
# https://github.com/zsh-users/zsh-autosuggestions
if  [ ! -d $ZSH_DIR/zsh-autosuggestions ]; then
    git clone https://github.com/zsh-users/zsh-autosuggestions $HOME/.zsh/zsh-autosuggestions
    echo -e "${SUCCESS}zsh-autosuggestions is installed:\n"
else
    echo -e "${INFO}zsh-autosuggestions is already installed\n"
fi

# zsh auto complete
# https://github.com/marlonrichert/zsh-autocomplete
if  [ ! -d $ZSH_DIR/zsh-autocomplete ]; then
    git clone --depth 1 -- https://github.com/marlonrichert/zsh-autocomplete.git $HOME/.zsh/zsh-autocomplete
    echo -e "${SUCCESS}zsh-autocomplete is installed:\n"
else
    echo -e "${INFO}zsh-autocomplete is already installed\n"
fi
