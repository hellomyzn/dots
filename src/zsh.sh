#!/bin/bash

source "${PWD}/helper/copy.sh"

# zsh
ZSH_FILES=(.zshenv .zshrc .zsh_profile .zsh_alias)
for FILE in ${ZSH_FILES[@]}
do
    FROM="${PWD}/.config/zsh/${FILE}"
    TO=$HOME/$FILE
    copy_file $FROM $TO
done

