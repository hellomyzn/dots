# /bin/bash

################################################
# HISTORY
################################################
export HISTFILE=~/.zsh_history
export HISTSIZE=1000000
export SAVEHIST=1000000


################################################
# PATH
################################################
export PATH="/opt/homebrew/bin:$PATH"
export PATH="$PATH:/Applications/Visual Studio Code.app/Contents/Resources/app/bin"
export PATH="$PATH:$HOME/myzn/scripts"
export PATH="$PATH:$HOME/myzn/3rd_party"


################################################
# PROMPT
################################################
export PS1="%F{#63686d}%d %f"$'\n'"%F{3}$ %f"
# If you want color prompt
# export PS1="%F{1}%1~ $%f "

# color: https://nemoplus.hateblo.jp/entry/20090119/1232373540
export LSCOLORS=dxfxcxdxbxegedabagacad
# export TERM=screen-256color
export TERM=xterm-256color

