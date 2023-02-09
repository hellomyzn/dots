#!/bin/bash

source "${PWD}/helper/copy.sh"

# make config dir if there is no config dir
HOME_CONFIG_PATH="${HOME}/.config"
if [ ! -d $HOME_CONFIG_PATH ]; then
    mkdir $HOME/.config
fi

# copy tmux conf
DIR="tmux"
CONFIG_PATH=".config/${DIR}"
FILE=".tmux.conf"
FROM="${PWD}/${CONFIG_PATH}/${FILE}"
TO="${HOME}/${FILE}"
copy_file $FROM $TO

# copy tmux dir
FROM="${PWD}/${CONFIG_PATH}"
TO="${HOME_CONFIG_PATH}/${DIR}"
copy_dir $FROM $TO