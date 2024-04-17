# /bin/bash

if [ $(uname) = "Darwin" ]; then
    # show .files in finder
    defaults write com.apple.finder AppleShowAllFiles TRUE

    # path for homebrew
    export PATH="/opt/homebrew/bin:$PATH"
    export PATH="/opt/homebrew/sbin:$PATH"

    # gh
    eval "$(gh completion -s zsh)"
fi

if [ -d $HOME/myzn ]; then
    export PATH="$PATH:$HOME/myzn/scripts"
    export PATH="$PATH:$HOME/myzn/3rd_party"
fi

# remove text when login zsh: Last login: Mon Feb 23 00:10:48 on ttys000
touch $HOME/.hushlogin

# HISTSIZE is overwrote when .zshrc is read
# just in case, read .zshenv again
if [ -f $HOME/.zshenv ]; then
     source $HOME/.zshenv
fi

if [ -f $HOME/.zsh_alias ]; then
     source $HOME/.zsh_alias
fi

if [ -f $HOME/.zsh_profile ]; then
     source $HOME/.zsh_profile
fi


# Generated for envman. Do not edit.
[ -s "$HOME/.config/envman/load.sh" ] && source "$HOME/.config/envman/load.sh"

################################################
# NEOFETCH
################################################
neofetch


################################################
# SPICETIFY
################################################
export PATH=$PATH:/Users/miyazonoeiji/.spicetify

source /Users/miyazonoeiji/.docker/init-zsh.sh || true # Added by Docker Desktop
