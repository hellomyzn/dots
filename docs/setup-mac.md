# Setup for Mac

## Setup System
- 1. Trackpad
	- Tracking speed: max
	- Tap to click: on
	- Swipe between full-screen applications: three fingers
- 2. Keyboard
	- Key repeat rate: max
	- Delay until repeat: max
	- Input sources -> edit -> Japanese -> Live Conversion: off
	- Keyboard Shortcuts... -> Functions Keys: Use F1, F2, etc. Keys as standard function keys: on
- 3. Desktop & Dock
	- remove widgets on Desktop
	- remove apps on Dock
	- Size: small
	- Automatically hide and show the Dock: On
- 4. Display
	- Select more space
- 5. Menu Bar
	- Battery -> Battery Options -> Show Percentage: on
- 6. Lock Screen
	- Turn display off on battery inactive: Never
	- Turn display off on power adapter inactive: Never
	- Require password after screen begins or display is turned off: immediately
- 7. iCloud
	- Photo: off


## Mail
add accounts
- Mail -> Settings -> Account


## Finder
- Finder -> Settings -> Advanced -> Show all filename extentions: on
- sidebar
	- add:
		- unnecessary things
	- remove:
		- screenshots
		- projects
- View -> Show Path Bar: on
- View -> Show Status Bar: on
- View -> Show view Options -> Show item info: on
- Show dotfiles: command + shift + .




2. install homebrew
- https://brew.sh/

3. git clone dots
```
mkdir -p ~/projects
git clone https://github.com/hellomyzn/dots.git ~/projects/dots
```

4. set up yabai
Disabling System Integrity Protection
- https://github.com/asmvik/yabai/wiki/Disabling-System-Integrity-Protection


5. set up google chrome
login
- chatGPT
- amazon
- Netflix
- X

6. github ssh key setup 
https://qiita.com/shizuma/items/2b2f873a0034839e47ce

7. git clone footprints
git clone git@github.com:hellomyzn/footprints.git ~/projects/footprints


set up 
- obsidian
- gemini-cli
- clipy
- spotify
- docker
- adobe creative cloud
	- Lightroom classicをインストール

install
- kindle
- Luminar neo


vscodeのセッティング



```
bash ./src/macos.sh
bash ./src/git.sh
bash ./src/tmux.sh
bash ./src/kitty.sh
bash ./src/sketchybar.sh
skhd --start-service
yabai --start-service
brew services start sketchybar
```
