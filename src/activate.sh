#!/bin/bash

source "${PWD}/helper/logging.sh"


echo "${INFO}brew services start"
brew services restart skhd
brew services restart sketchybar
brew services restart yabai
brew services restart mpd
brew services restart syncthing

echo "${INFO}source zshfiles"
source ${HOME}/.zshenv
source ${HOME}/.zshrc
