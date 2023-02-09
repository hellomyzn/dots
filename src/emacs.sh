#!/bin/bash

source "${PWD}/helper/copy.sh"

# emacs
DIR=".emacs.d"
CONFIG_PATH=".config/emacs"
FROM="${PWD}/${CONFIG_PATH}/${DIR}"
TO="${HOME}/${DIR}"
copy_dir $FROM $TO
