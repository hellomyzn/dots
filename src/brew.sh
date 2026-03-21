#!/bin/bash

source "${PWD}/helper/logging.sh"

BREW_PATH=$(which brew)
if [ ! -f $BREW_PATH ]; then
    echo "${INFO}installing homebrew..."
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
fi

echo "${INFO}run brew doctor..."
which brew >/dev/null 2>&1 && brew doctor

echo "${INFO}run brew update..."
which brew >/dev/null 2>&1 && brew update

echo "${INFO}ok. run brew upgrade..."
brew upgrade

echo "${INFO}brew tap"
# for sketchybar
brew tap FelixKratz/formulae

formulas=(
	neofetch
	nvim
	jump
	fzf
	bat
	clipy
	gemini-cli
	# sketchybar
		sketchybar
		# for pomodoro
		terminal-notifier
		jq

	# git
		git
		# for git diff
		git-delta

	# tmux
		tmux
		lazygit

	# skhd
	# https://github.com/asmvik/skhd
		asmvik/formulae/skhd
		# control spotify with skhd
		# https://github.com/hnarayanan/shpotify
		shpotify

	# yabai
	# https://github.com/asmvik/yabai
		asmvik/formulae/yabai
		borders


)

echo "${INFO}brew install formula"
for formula in "${formulas[@]}"; do
    brew install $formula || brew upgrade $formula
done

casks=(
	kitty
	obsidian
	docker
	google-chrome
	visual-studio-code
	zoom
	spotify
    istat-menus
	postman
	sequel-ace
	claude
	codex
	chatgpt-atlas
	antigravity
	adobe-creative-cloud
	figma
	canva
	# for sketchybar
		font-hack-nerd-font
		sf-symbols
)

echo "${INFO}brew casks"
for cask in "${casks[@]}"; do
    brew install --cask $cask
done

brew cleanup
echo "${INFO}brew installed"

echo "${INFO}brew services start"
skhd --restart-service
brew services restart sketchybar
# brew services restart yabai
# brew services restart syncthing
