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
FROM="${PWD}/.config/tmux/"
TO=$HOME
FILE=".tmux.conf"
copy_file $FROM $TO $FILE

# tmux sessions
mkdir -p $HOME/.config/tmux/sessions
PATH_TMUX_SESSIONS=".config/tmux/sessions"
FROM=$PWD/$PATH_TMUX_SESSIONS
TO=$HOME/$PATH_TMUX_SESSIONS
SESSION_FILES=$(ls $FROM)

for f in $SESSION_FILES; do
    copy_file $FROM $TO $f
done

# yabai
mkdir -p $HOME/.config/yabai
DIR_PATH=".config/yabai"
FROM=$PWD/$DIR_PATH
TO=$HOME/$DIR_PATH
FILE="yabairc"
copy_file $FROM $TO $FILE

# skhd
mkdir -p $HOME/.config/skhd
DIR_PATH=".config/skhd"
FROM=$PWD/$DIR_PATH
TO=$HOME/$DIR_PATH
FILE="skhdrc"
copy_file $FROM $TO $FILE

# sketchybar
DIR_PATH=".config/sketchybar"
FROM=$PWD/$DIR_PATH
TO=$HOME/$DIR_PATH
ln -snfv $FROM $TO

# neofetch
mkdir -p $HOME/.config/neofetch
DIR_PATH=".config/neofetch"
FROM=$PWD/$DIR_PATH
TO=$HOME/$DIR_PATH
FILE="config.conf"
copy_file $FROM $TO $FILE





# for f in $FROM/*; do
#     [ "$f" = ".git" ] && continue
#     [ "$f" = ".gitconfig.local.template" ] && continue
#     [ "$f" = ".gitmodules" ] && continue

#     # シンボリックリンクを貼る
#     # ln -snfv $PWD/$f $TO/$f
    
# done