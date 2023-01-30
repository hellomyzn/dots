# /bin/bash

source ./bin/logging.sh
source ./bin/copy.sh

# -p: if there is no .config dir
mkdir -p $HOME/.config

# zsh
ZSH_FILES=(.zshenv .zshrc .zsh_profile .zsh_alias)
for FILE in ${ZSH_FILES[@]}
do
    FROM="${PWD}/.config/zsh"
    TO=$HOME
    copy_file $FROM $TO $FILE
done

# tmux
DIR_PATH=".config/tmux"
FILE=.tmux.conf
FROM=$PWD/$DIR_PATH
TO=$HOME
copy_file $FROM $TO $FILE

FROM=$PWD/$DIR_PATH
TO=$HOME/$DIR_PATH
copy_dir $FROM $TO

# yabai
DIR_PATH=".config/yabai"
FROM=$PWD/$DIR_PATH
TO=$HOME/$DIR_PATH
copy_dir $FROM $TO

# skhd
DIR_PATH=".config/skhd"
FROM=$PWD/$DIR_PATH
TO=$HOME/$DIR_PATH
copy_dir $FROM $TO

# sketchybar
DIR_PATH=".config/sketchybar"
FROM=$PWD/$DIR_PATH
TO=$HOME/$DIR_PATH
copy_dir $FROM $TO

# neofetch
DIR_PATH=".config/neofetch"
FROM=$PWD/$DIR_PATH
TO=$HOME/$DIR_PATH
copy_dir $FROM $TO

# nnn
DIR_PATH=".config/nnn"
FROM=$PWD/$DIR_PATH
TO=$HOME/$DIR_PATH
copy_dir $FROM $TO



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