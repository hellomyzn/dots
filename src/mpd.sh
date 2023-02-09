#!/bin/bash
# https://gist.github.com/sdushantha/fd0b4f7d69b814317bc33da3a57fdf49

source "${PWD}/helper/copy.sh"

# copy mpd dir
DIR=".mpd"
CONFIG_PATH=".config/mpd"
FROM="${PWD}/${CONFIG_PATH}/${DIR}"
TO="${HOME}/${DIR}"
copy_dir $FROM $TO

MPD_FILE=(
    "mpd.db" \
    "mpd.log" \
    "mpd.pid" \
    "mpdstate" 
)

# Create the required files
for FILE in ${MPD_FILE[@]}
do
    touch "${HOME}/.mpd/${FILE}"
done

