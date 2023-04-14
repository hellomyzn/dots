#!/bin/bash

source "${PWD}/helper/copy.sh"

# copy shpotify
DIR="shpotify"
CONFIG_PATH=".config/${DIR}"
FILE=".shpotify.cfg"
FROM="${PWD}/${CONFIG_PATH}/${FILE}"
TO="${HOME}/${FILE}"
cp $FROM $TO

