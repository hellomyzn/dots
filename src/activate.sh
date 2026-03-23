#!/bin/bash

source "${PWD}/helper/logging.sh"


echo "${INFO}brew services start"
skhd --restart-service
yabai --restart-service
brew services restart sketchybar

echo "${INFO}source zshfiles"
source ${HOME}/.zshrc
