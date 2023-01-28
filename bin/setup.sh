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


PATH_TMUX_SESSIONS=".config/tmux/sessions"
TO=$HOME/$PATH_TMUX_SESSIONS
FROM=$PWD/$PATH_TMUX_SESSIONS

SESSION_FILES=$(ls $FROM)
for f in $SESSION_FILES; do
    copy_file $FROM $TO $f
    ln -snfv $FROM/$f $TO/$f
done
# echo $array
# for eachValue in ${array[@]}; do
#     echo ${eachValue}
# done
# for f in $FROM/*; do
#     [ "$f" = ".git" ] && continue
#     [ "$f" = ".gitconfig.local.template" ] && continue
#     [ "$f" = ".gitmodules" ] && continue

#     # シンボリックリンクを貼る
#     # ln -snfv $PWD/$f $TO/$f
    
# done



# # tmux sessions
# mkdir -p $HOME/.config/tmux
# FROM=".config/tmux/sessions"
# TO="${HOME}/.config/tmux/sessions"
# FILE=".tmux.conf"
# PATH_SESSIONS=".config/tmux/sessions"
# if [ -d $HOME/$PATH_SESSIONS ]; then
#     echo -e "${WARNING} : $PATH_SESSIONS exists"
#     ls $PATH_SESSIONS/* 
#     read -p "Do you want to update the above files? [y/n]: " yn
#     if [ $yn = "y" ]; then 
#         ls $PATH_SESSIONS/* | xargs -I{} cp {} $HOME/{}
#         echo -e "${SUCCESS} : Copied: ${HOME}/${PATH_SESSIONS}\n"
#     else
#         echo -e "${CANCEL} : Canceled:  ${HOME}/${PATH_SESSIONS}\n"
#     fi
# else
#     # copy from sessions dir to $HOME/.config/tmux/sessions
#     mkdir -p $HOME/$PATH_SESSIONS
#     ls $PATH_SESSIONS/* | xargs -I{} cp {} $HOME/{}
#     echo -e "${SUCCESS} : Copied: ${HOME}/${PATH_SESSIONS}\n"
# fi
