#!/bin/bash

source ./bin/logging.sh

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
brew tap homebrew/cask-fonts
brew tap FelixKratz/formulae

formulas=(
    neofetch
    git
    koekeishiya/formulae/skhd
    koekeishiya/formulae/yabai
    sketchybar
    # for sketchybar
    jq
    switchaudio-osx
    nnn
    # for nnn
    trash-cli
    pkg-config
    # nnn: fzcd
    fzf
    # nnn: auto jump
    jump
    # nnn: preview-tui
    mediainfo
    unzip
    tree
    less
    bat
    atool
    ffmpeg
    ffmpegthumbnailer
    poppler
    glow
    # nnn: show image
    viu
    # for pomodoro
    terminal-notifier
    caarlos0/tap/timer
)

echo "${INFO}brew install formula"
for formula in "${formulas[@]}"; do
    brew install $formula || brew upgrade $formula
done

casks=(
    zoom
    skitch
    iterm2
    docker
    google-chrome
    brave-browser
    firefox
    spacelauncher
    istat-menus
    spectacle
    sequel-ace
    kindle
    # for sketchybar
    font-hack-nerd-font
    sf-symbols
    # torrent
    transmission
)


echo "${INFO}brew casks"
for cask in "${casks[@]}"; do
    brew install --cask $cask
done


brew cleanup
echo "${INFO}brew installed"
