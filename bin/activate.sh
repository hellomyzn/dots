#!/bin/bash

source ./bin/logging.sh


echo "${INFO}brew services start"
brew services start skhd
brew services start sketchybar
brew services start yabai

echo "${INFO}source zshfiles"
source ${HOME}/.zshenv
source ${HOME}/.zshrc
