################################################
# PROMPT
################################################
export PS1="%1~  "
# If you want color prompt
# export PS1="%F{1}%1~ $%f "
# Add 2 lines between this and ptevious line
precmd() { print "\n\n" }

# ディレクトリ名だけでcdする
setopt auto_cd

# Show .files
defaults write com.apple.finder AppleShowAllFiles TRUE


################################################
# PATH
################################################
export PATH="$PATH:/opt/homebrew/bin/"
export PATH="$PATH:/Applications/Visual Studio Code.app/Contents/Resources/app/bin"
export PATH="$PATH:$HOME/bin"
export PATH="$PATH:$HOME/bin/3rd_party"


################################################
# ALIAS
################################################
alias spotify-dl='
	mkdir -p ~/Downloads/spotify &&
	export DOCKER_CONTENT_TRUST=0 &&
	docker run -it -v ~/Downloads/spotify:/download --rm spotify-dl '
# Tmux
# alias t4='tmux new-session \; source-file ~/.config/tmux/4session'
# alias t3='tmux new-session \; source-file ~/.config/tmux/3columns'
alias tmux_vim='tmux source-file ~/.config/tmux/sessions/vim'
alias tmux_3columns='tmux source-file ~/.config/tmux/sessions/logs'

# ls: A=all, G=color, l=more information
alias ls="ls -AFGl"
# ls color: https://nemoplus.hateblo.jp/entry/20090119/1232373540
export LSCOLORS=dxfxcxdxbxegedabagacad

# 時間表記の追加
setopt extended_history
alias history='history -t "%F %T"'


################################################
# HISTORY
################################################
HISTFILE=~/.zsh_history
HISTSIZE=1000000
SAVEHIST=1000000


# Docker Content Trust（DCT）を有効にする。DCTは、Dockerイメージを「なりすまし」と「改ざん」から保護するセキュリティ機能です。
export DOCKER_CONTENT_TRUST=1

################################################
# NEOFETCH
################################################
neofetch

