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
# brew tap homebrew/cask-fonts
brew tap FelixKratz/formulae

formulas=(
	neofetch
	git
	tmux
	trash-cli
	nvim
	skhd
	shpotify

    # for git diff
    git-delta
	# for tmux
		lazygit
		sketchybar
	# for sketchybar
		# for pomodoro
		terminal-notifier
		jq
		# switchaudio-osx
		# ical-buddy

	# optional
		# koekeishiya/formulae/yabai

	    # syncthing
		# bat
		# nnn

		# # for nnn: fzcd
		# fzf

		# # for nnn
		# pkg-config

		# # nnn: auto jump
		# jump

		# # nnn: preview-tui
		# mediainfo
		# unzip
		# tree
		# less
		# atool
		# ffmpeg
		# ffmpegthumbnailer
		# poppler
		# glow

		# # nnn: show image
		# viu
)

echo "${INFO}brew install formula"
for formula in "${formulas[@]}"; do
    brew install $formula || brew upgrade $formula
done

casks=(
	zoom
	kitty
	docker
	google-chrome
	spotify
	visual-studio-code
    istat-menus
	nikitabobko/tap/aerospace
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
