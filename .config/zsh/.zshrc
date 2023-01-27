# show .files in finder
defaults write com.apple.finder AppleShowAllFiles TRUE

# remove text when login zsh: Last login: Mon Feb 23 00:10:48 on ttys000
touch ~/.hushlogin

################################################
# PROMPT
################################################
export PS1="%F{1}%1~ %f "
# If you want color prompt
# export PS1="%F{1}%1~ $%f "

# Add 2 lines between this and ptevious line
precmd() { print "\n\n" }


################################################
# PATH
################################################
export PATH="$PATH:/opt/homebrew/bin/"
export PATH="$PATH:/Applications/Visual Studio Code.app/Contents/Resources/app/bin"
export PATH="$PATH:$HOME/bin"
export PATH="$PATH:$HOME/bin/3rd_party"


# ls color: https://nemoplus.hateblo.jp/entry/20090119/1232373540
export LSCOLORS=dxfxcxdxbxegedabagacad


if [ -f ~/.zsh_alias ]; then
     source ~/.zsh_alias
fi

if [ -f ~/.zsh_profile ]; then
     source ~/.zsh_profile
fi
