#!/bin/bash

source "${PWD}/helper/copy.sh"

# copy gitconfig
DIR="git"
CONFIG_PATH=".config/${DIR}"
FROM="${PWD}/${CONFIG_PATH}/gitconfig"
TO="${HOME}/.gitconfig"
cp $FROM $TO
