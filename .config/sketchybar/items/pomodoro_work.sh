#!/bin/bash

sketchybar --add item work_button center \
           --set work_button label="🍅" \
                             click_script="NAME=work_button $PLUGIN_DIR/pomodoro.sh"
