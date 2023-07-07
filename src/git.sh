#!/bin/bash

source "${PWD}/helper/copy.sh"

# make config dir if there is no config dir
HOME_CONFIG_PATH="${HOME}/.config"
if [ ! -d $HOME_CONFIG_PATH ]; then
    mkdir $HOME/.config
fi

# copy gitconfig
DIR="git"
CONFIG_PATH=".config/${DIR}"
FROM="${PWD}/${CONFIG_PATH}/gitconfig"
TO="${HOME}/.gitconfig"
cp $FROM $TO

# copy ignore
# ref: https://qiita.com/takuya0301/items/29187aa088d04cf92659
HOME_CONFIG_PATH="${HOME}/.config/git"
if [ ! -d $HOME_CONFIG_PATH ]; then
    mkdir $HOME/.config/git
fi

DIR="git"
FILE="ignore"
CONFIG_PATH=".config/${DIR}"
FROM="${PWD}/${CONFIG_PATH}/${FILE}"
TO="${HOME}/.config/git/${FILE}"
copy_file $FROM $TO

DIR="git"
FILE=".gitignore_global"
CONFIG_PATH=".config/${DIR}"
FROM="${PWD}/${CONFIG_PATH}/${FILE}"
TO="${HOME}/${FILE}"
copy_file $FROM $TO
