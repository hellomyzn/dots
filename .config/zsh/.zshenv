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
export PATH="$PATH:$HOME/myzn"
export PATH="$PATH:$HOME/myzn/3rd_party"


################################################
# PROMPT
################################################
export PS1="%F{#63686d}%d %f"$'\n'"%F{3}$ %f"
# If you want color prompt
# export PS1="%F{1}%1~ $%f "

# color: https://nemoplus.hateblo.jp/entry/20090119/1232373540
export LSCOLORS=dxfxcxdxbxegedabagacad
export TERM=xterm-256color


################################################
# NNN
################################################
export NNN_TRASH=1
export NNN_COLORS="3246"
# plug: https://github.com/jarun/nnn/tree/master/plugins
PLUG_C="c:fzcd;"
PLUG_D="d:dragd;"
PLUG_I="i:imgview;"
PLUG_J="j:autojump;"
PLUG_O="o:fzopen;"
PLUG_P="p:preview-tui;"
PLUG_T="t:preview-tabbed;"
export NNN_PLUG="${PLUG_C}${PLUG_D}${PLUG_I}${PLUG_J}${PLUG_O}${PLUG_P}${PLUG_T}"

# fcolurs: https://github.com/jarun/nnn/wiki/Usage#configuration
RED="01" GRE="02" YEL="03" BLU="04" MAG="05" CYA="06" WHI="07" BLA="08"
BLK=$WHI CHR=$WHI DIR=$YEL EXE=$GRE REG=$BLU HARDLINK=$RED SYMLINK=$MAG MISSING=$WHI ORPHAN=$WHI FIFO=$WHI SOCK=$WHI OTHER=$WHI
export NNN_FCOLORS="$BLK$CHR$DIR$EXE$REG$HARDLINK$SYMLINK$MISSING$ORPHAN$FIFO$SOCK$OTHER"
set --export NNN_FIFO="/tmp/nnn.fifo"

