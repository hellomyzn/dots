echo "installing homebrew..."
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

echo "run brew doctor..."
which brew >/dev/null 2>&1 && brew doctor

echo "run brew update..."
which brew >/dev/null 2>&1 && brew update

echo "ok. run brew upgrade..."
brew upgrade

formulas=(
        git
)

echo "brew tap"
brew tap homebrew/cask-fonts

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
)


echo "brew casks"
for cask in "${casks[@]}"; do
    brew install --cask $cask
done


brew cleanup
echo "brew installed"