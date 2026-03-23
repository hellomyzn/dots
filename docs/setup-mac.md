# Setup for Mac

## Setup System
1. Trackpad
- Tracking speed: max
- Tap to click: on
- Swipe between full-screen applications: three fingers
2. Keyboard
- Key repeat rate: max
- Delay until repeat: max
- Input sources -> edit -> Japanese -> Live Conversion: off
- Keyboard Shortcuts... -> Functions Keys: Use F1, F2, etc. Keys as standard function keys: on
3. Desktop & Dock
- remove widgets on Desktop
- remove apps on Dock
- Size: small
- Automatically hide and show the Dock: On
4. Display
	- Select more space
5. Menu Bar
- Battery -> Battery Options -> Show Percentage: on
- Automatically hide and show the menu bar: Always
6. Lock Screen
- Turn display off on battery inactive: Never
- Turn display off on power adapter inactive: Never
- Require password after screen begins or display is turned off: immediately
7. iCloud
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


## Softwares / Configs

1. install homebrew
- https://brew.sh/

	after install homebrew, run the command below
	```bash
	$ killall Terminal
	```


2. git clone dots
	```bash
	$ mkdir -p ~/projects
	$ git clone https://github.com/hellomyzn/dots.git ~/projects/dots
	$ cd ~/projects/dots
	$ git remote set-url origin git@github.com:hellomyzn/dots.git
	```

3. install softwares and set up configs
	```bash
	$ make mac
	```

4. set up yabai
Disabling System Integrity Protection
- 4.1. https://github.com/asmvik/yabai/wiki/Disabling-System-Integrity-Protection
- 4.2. https://github.com/asmvik/yabai/wiki/Installing-yabai-(latest-release)#configure-scripting-addition
- 4.3. reboot


## set up manually
### Wallpaper
5. change a wallpaper
- [wallpapers](../images/wallpapers)

### signin on Google Chrome
| service | url |
| -- | -- |
| Github | https://github.com/ |
| ChatGpt | https://chatgpt.com/  |
| Amazon | https://www.amazon.co.jp/ |
| Netflix | https://www.netflix.com/ |
| X | https://x.com/ |

### SSH / Github
```bash
$ mkdir -p ~/.ssh
$ cd ~/.ssh
$ ssh-keygen -t rsa
$ pbcopy < ~/.ssh/id_rsa.pub
$ git config --global user.email "you@example.com"
$ git config --global user.name "Your Name"
```
github ssh key setup 
- https://github.com/settings/ssh
参考
- https://qiita.com/shizuma/items/2b2f873a0034839e47ce

### MyProjects
```bash
$ bash ./src/git-repo.sh
```
### vscode
- Install Extentions
	- vim

### softwares
- obsidian
- gemini-cli
- clipy
- spotify
- docker
- iStat Menus
- adobe creative cloud
	- Lightroom classicをインストール

### app store
install
- kindle
- Luminar neo

vscodeのセッティング


