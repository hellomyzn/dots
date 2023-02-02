#!/bin/bash

source ./bin/logging.sh
source ./bin/copy.sh

# -p: if there is no .config dir
mkdir -p $HOME/.config

# zsh
ZSH_FILES=(.zshenv .zshrc .zsh_profile .zsh_alias)
for FILE in ${ZSH_FILES[@]}
do
    FROM="${PWD}/.config/zsh/${FILE}"
    TO=$HOME/$FILE
    copy_file $FROM $TO "            "
done

# tmux
DIR_PATH=".config/tmux"
FILE=".tmux.conf"
FROM=$PWD/$DIR_PATH/$FILE
TO=$HOME/$FILE
copy_file $FROM $TO "            "


CONFIG_PATH=".config"
CONFIG_DIRS=(
    "tmux" \
    "yabai" \
    "skhd" \
    "sketchybar" \
    "neofetch" \
    "nnn" \
)

for FILE in ${CONFIG_DIRS[@]}
do
    FROM="${PWD}/${CONFIG_PATH}/$FILE"
    TO="$HOME/${CONFIG_PATH}/$FILE"
    copy_dir $FROM $TO "            "
done


# for f in $FROM/*; do
#     [ "$f" = ".git" ] && continue
#     [ "$f" = ".gitconfig.local.template" ] && continue
#     [ "$f" = ".gitmodules" ] && continue

#     # シンボリックリンクを貼る
#     # ln -snfv $PWD/$f $TO/$f
    
# done

# tmux sessions
# mkdir -p $HOME/.config/tmux/sessions
# PATH_TMUX_SESSIONS=".config/tmux/sessions"
# FROM=$PWD/$PATH_TMUX_SESSIONS
# TO=$HOME/$PATH_TMUX_SESSIONS
# SESSION_FILES=$(ls $FROM)

# for f in $SESSION_FILES; do
#     copy_file $FROM $TO $f
# done