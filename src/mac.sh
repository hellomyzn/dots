
# デフォルトスクリーンショット保存先変更
mkdir -p ~/screenshots
defaults write com.apple.screencapture location ~/screenshots
killall SystemUIServer

# dotfileを見えるようにする
defaults write com.apple.finder AppleShowAllFiles -boolean true
killall Finder