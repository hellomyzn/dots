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
    syncthing
    sketchybar
    coreutils
    nvim
    tmux
    # for tmux
    lazygit
    # for sketchybar
    jq
    switchaudio-osx
    gh
    nnn
    ical-buddy
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
    # ncmpcpp: music player
    ncmpcpp
    mpd
    mpc
    # nvim
    wget
    node
    # nvim: telescope
    ripgrep
    # nvim: lsp for ruby. libyaml is for rbenv
    libyaml
    rbenv
    # nvim: lsp for go.
    go
    gopls
    # # INFO: I don't use this
    # # nvim: for phpactor
    # # Installation: https://phpactor.readthedocs.io/en/master/usage/standalone.html
    # php
    # composer
    # Git diff
    git-delta
)

echo "${INFO}brew install formula"
for formula in "${formulas[@]}"; do
    brew install $formula || brew upgrade $formula
done

casks=(
    zoom
    skitch
    kitty
    docker
    google-chrome
    firefox
    istat-menus
    spectacle
    sequel-ace
    kindle
    spotify
    vscodium
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

echo "${INFO}brew services start"
brew services restart skhd
brew services restart sketchybar
brew services restart yabai
brew services restart mpd
brew services restart syncthing
