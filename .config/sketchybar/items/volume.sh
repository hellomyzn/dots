#!/bin/sh

sketchybar --add slider volume right                          \
           --set volume script="$PLUGIN_DIR/volume.sh"        \
                        updates=on                            \
                        icon.drawing=off                      \
                        label.drawing=off                     \
                        padding_left=0                        \
                        padding_right=0                       \
                        slider.highlight_color=$YELLOW        \
                        slider.background.height=5            \
                        slider.background.corner_radius=3     \
                        slider.background.color=$BACKGROUND_2 \
                        slider.knob=􀀁                         \
           --subscribe volume volume_change mouse.clicked

sketchybar --add alias "Control Center,Sound" right                      \
           --rename "Control Center,Sound" volume_alias                  \
           --set volume_alias icon.drawing=on                           \
                              icon=􀊩                                    \
                              icon.color=$YELLOW                         \
                              label.drawing=off                          \
                              alias.color=$YELLOW                         \
                              padding_left=7                     \
                              padding_right=7                    \
                              icon.background.height=2           \
                              icon.background.y_offset=-12                \
                              width=20                                   \
                              align=right                                \
                              click_script="$PLUGIN_DIR/volume_click.sh"

sketchybar --add bracket status brew github.bell volume volume_alias ical  \
           --set status background.color=$BACKGROUND_1                      \
                        background.border_color=$BACKGROUND_2               \
                        background.border_width=2
