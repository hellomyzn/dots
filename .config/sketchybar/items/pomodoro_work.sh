#!/bin/bash

sketchybar --add item work_button left \
           --set work_button label="🍅" \
                 drawing=off \
                 click_script="NAME=work_button $PLUGIN_DIR/pomodoro.sh"
