# /bin/bash

# mac os setup
if [ $(uname) = "Darwin" ]; then
    # show .files in finder
    defaults write com.apple.finder AppleShowAllFiles TRUE
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

################################################
# NEOFETCH
################################################
neofetch

export DOCKER_CONTENT_TRUST=0
