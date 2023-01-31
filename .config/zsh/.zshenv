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
export PATH="$PATH:$HOME/bin"
export PATH="$PATH:$HOME/bin/3rd_party"


################################################
# PROMPT
################################################
export PS1="%F{3}%1~ %f "
# If you want color prompt
# export PS1="%F{1}%1~ $%f "

# color: https://nemoplus.hateblo.jp/entry/20090119/1232373540
export LSCOLORS=dxfxcxdxbxegedabagacad


################################################
# NNN: https://github.com/jarun/nnn/tree/master/plugins
################################################
export NNN_TRASH=1
# export NNN_COLORS="2136"
export NNN_PLUG='u:davecloud;o:fzopen;c:fzcd;j:autojump;p:preview-tui;t:preview-tabbed;i:imgview;v:vidthumb;d:dragd'
export NNN_FCOLORS='0000E6310000000000000000'
set --export NNN_FIFO="/tmp/nnn.fifo"

