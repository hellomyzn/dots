#!/bin/bash

source "${PWD}/helper/copy.sh"

# make config dir if there is no config dir
HOME_CONFIG_PATH="${HOME}/.config"
if [ ! -d $HOME_CONFIG_PATH ]; then
    mkdir $HOME/.config
fi

# copy dir
DIR="neofetch"
CONFIG_PATH=".config/${DIR}"
FROM="${PWD}/${CONFIG_PATH}"
TO="${HOME_CONFIG_PATH}/${DIR}"
copy_dir $FROM $TO