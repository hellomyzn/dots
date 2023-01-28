echo "installing homebrew..."
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

echo "run brew doctor..."
which brew >/dev/null 2>&1 && brew doctor

echo "run brew update..."
which brew >/dev/null 2>&1 && brew update

echo "ok. run brew upgrade..."
brew upgrade

echo "brew tap"
brew tap homebrew/cask-fonts
brew tap FelixKratz/formulae

formulas=(
    neofetch
    git
    koekeishiya/formulae/skhd
    koekeishiya/formulae/yabai
    sketchybar
    jq
    switchaudio-osx
    nnn
)

echo "brew install formula"
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
    font-hack-nerd-font
    sf-symbols
    kindle
)


echo "brew casks"
for cask in "${casks[@]}"; do
    brew install --cask $cask
done


brew cleanup
echo "brew installed"


echo "brew services start"
brew services start skhd
brew services start sketchybar
brew services start yabai
  


