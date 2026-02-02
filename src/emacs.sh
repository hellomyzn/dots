#!/bin/bash

source "${PWD}/helper/copy.sh"

# Input
DIR="emacs/.emacs.d"
HOME_CONFIG_PATH="${HOME}"

# make config dir if there is no config dir
if [ ! -d $HOME_CONFIG_PATH ]; then
    mkdir $HOME_CONFIG_PATH
fi

# copy emacs dir
CONFIG_PATH=".config/${DIR}"
FROM="${PWD}/${CONFIG_PATH}"
TO="${HOME_CONFIG_PATH}"
copy_dir $FROM $TO