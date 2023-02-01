#!/bin/sh

sketchybar -m --add item pomodoro center \
              --set pomodoro  icon="pomo: " \
                              label="hoge" \
                              update_freq=2 \
                              script="$PLUGIN_DIR/pomodoro.sh" \
              --subscribe pomodoro mouse.clicked