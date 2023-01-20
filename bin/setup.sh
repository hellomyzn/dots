source ./bin/logging.sh

# -p: if there is no .config dir
mkdir -p $HOME/.config

# # zsh
ZSH_FILES=(.zshenv .zshrc .zsh_profile .zsh_alias)
for file in ${ZSH_FILES[@]}
do
    # if file exists, ask you want to copy?
    if [ -f $HOME/$file ]; then
        echo "${WARNING} : ${file} exists"
        read -p "Do you want to update ${file} ? [y/n]: " yn
        if [ $yn = "y" ]; then 
            cp .config/zsh/$file $HOME/$file
            echo -e "${SUCCESS} : Copied: ${file}\n"
        else
            echo -e "${CANCEL} : Canceled: ${file}\n"
        fi
    else
        cp .config/zsh/$file $HOME/$file
        echo -e "${SUCCESS}  : Copied: ${file}\n"
    fi
done



# tmux
PATH_SESSIONS=".config/tmux/sessions"
if [ -d $HOME/$PATH_SESSIONS ]; then
    echo -e "${WARNING} : $PATH_SESSIONS exists"
    ls $PATH_SESSIONS/* 
    read -p "Do you want to update the above files? [y/n]: " yn
    if [ $yn = "y" ]; then 
        ls $PATH_SESSIONS/* | xargs -I{} cp {} $HOME/{}
        echo -e "${SUCCESS} : Copied: ${HOME}/${PATH_SESSIONS}\n"
    else
        echo -e "${CANCEL} : Canceled:  ${HOME}/${PATH_SESSIONS}\n"
    fi
else
    # copy from sessions dir to $HOME/.config/tmux/sessions
    mkdir -p $HOME/$PATH_SESSIONS
    ls $PATH_SESSIONS/* | xargs -I{} cp {} $HOME/{}
    echo -e "${SUCCESS} : Copied: ${HOME}/${PATH_SESSIONS}\n"
fi


