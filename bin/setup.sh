source ./bin/logging.sh
source ./bin/copy.sh

# # -p: if there is no .config dir
mkdir -p $HOME/.config
mkdir -p $HOME/.config/tmux/sessions

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
PATH_TMUX_SESSIONS=".config/tmux/sessions"
TO=$HOME/$PATH_TMUX_SESSIONS
FROM=$PWD/$PATH_TMUX_SESSIONS

SESSION_FILES=$(ls $FROM)
for f in $SESSION_FILES; do
    copy_file $FROM $TO $f
    ln -snfv $FROM/$f $TO/$f
done

# for f in $FROM/*; do
#     [ "$f" = ".git" ] && continue
#     [ "$f" = ".gitconfig.local.template" ] && continue
#     [ "$f" = ".gitmodules" ] && continue

#     # シンボリックリンクを貼る
#     # ln -snfv $PWD/$f $TO/$f
    
# done