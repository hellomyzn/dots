#!/bin/bash

source "${PWD}/helper/copy.sh"
source "${PWD}/helper/logging.sh"

# make config dir if there is no config dir
HOME_CONFIG_PATH="${HOME}/.config"
if [ ! -d $HOME_CONFIG_PATH ]; then
    mkdir $HOME/.config
fi

# copy tmux dir
DIR="nnn"
CONFIG_PATH=".config/${DIR}"
FROM="${PWD}/${CONFIG_PATH}"
TO="${HOME_CONFIG_PATH}/${DIR}"
copy_dir $FROM $TO

# nnn icon setup
# set up nnn nerd icon: https://github.com/jarun/nnn/wiki/Advanced-use-cases
echo "${INFO}set up nnn"
git clone git@github.com:jarun/nnn.git
sudo make -C ${PWD}/nnn O_NERD=1
NNN_PATH=$(which nnn)
sudo cp ${PWD}/nnn/nnn $NNN_PATH
rm -rf ${PWD}/nnn