MY RICE(WIP)
<img width="1680" alt="Screenshot 2023-01-28 at 15 18 29" src="https://user-images.githubusercontent.com/20104403/215241640-36121c02-ef23-4ee0-b8d8-66d69272a3f9.png">


**vim**
![image.png](https://qiita-image-store.s3.ap-northeast-1.amazonaws.com/0/184733/20aaa2ef-963b-6451-7b1f-402b535b5c37.png)

**emacs**
![image.png](https://qiita-image-store.s3.ap-northeast-1.amazonaws.com/0/184733/646b9225-3fc5-d88b-c381-e5b6b4e3256e.png)



OS: MacOS
PM: homebrew
WM: yabai
FM: nnn
BAR: Skechy bar
TERMINAL: iTerm
Apps Launcher: ~SpaceLauncher~
SM: Tmux
Editor: Nvim

## Instration
```
$ make setup
```

You have to install ruby through rbenv
[Ruby 環境構築【Mac】](https://qiita.com/kanoVNFO/items/777f4115244b3c4d2e8d)

How zsh files will be loaded.
```
start: zshenv
end: zshenv
start: zshrc
    start: zsh_alias
    end: zsh_alias
    start: zsh_profile
    end: zsh_profile
end: zshrc
```


TIPS
```
$ chmod +x filename
```


### Pomodoro
start work (50m)
```
$ work
```
start rest (10m)
```
$ rest
```
you can see the logs in $HOME/.pomodoro_history
```
$ cat $HOME/.pomodoro_history
```

### syncthing
REF: https://qiita.com/MasanoriIwakura/items/555f3bc0f4f322c63cdf
```
# open web browser
$ syncthing -browser-only
```

### zerotier-one
WEB: https://my.zerotier.com/
REF: https://qiita.com/RE-yura/items/3b750188e3cff05c55b9
REF: https://qiita.com/daikiclimate/items/bbffd80bb0b057c409e9
if it's mac
```
# run
$ sudo launchctl load /Library/LaunchDaemons/com.zerotier.one.plist

# stop
$ sudo launchctl unload /Library/LaunchDaemons/com.zerotier.one.plist

# show status
$ sudo zerotier-cli status

# join
$ sudo zerotier-cli join [network_id]
```

### git
run this command to copy gitconfig to your local machine
```
$ ./src/git.sh
```
and then set up your git account
```
git config --global user.name "Your Name"
git config --global user.email you@example.com
```



### Spotify
Install 
- [spicetify](https://spicetify.app/)

Theme: `Ziro`
```
[myzn]
text=d6af7c
subtext=63686d
main=212634
sidebar=212634
player=212634
card=1C1D2B
shadow=1C1D2B
selected-row=d6af7c
button=ba422b
button-active=d6af7c
button-disabled=63686d
tab-active=d6af7c
notification=d6af7c
notification-error=63686d
misc=1E2529
```

### Shpotify
- [github](https://github.com/hnarayanan/shpotify)
After run a script(/dots/src/shpotify.sh), set up your Spotify API on `$HOME/.shpotify.cfg`
```
CLIENT_ID=""
CLIENT_SECRET=""
```

### Install java
This is just a note for me to install Java on mac
#### ref
- [Install Java on mac](https://www.youtube.com/watch?v=RfIiBMJqvp8&ab_channel=Joey%27sTech)
- [Set up lsp for java](https://www.youtube.com/watch?v=WelEHE3RwtY&ab_channel=IvanByteVideo)

1. Install Java from Oracle: [url](https://www.oracle.com/java/technologies/downloads/)
`Arm 64 DMG Installer` is for M1 mac

2. After download that, open and install following the instraction
make sure java is installed. 
```
$ java --version
```
3. Make sure the file paths are correct on `/path/to/nvim/ftplugin/java.lua`
4. Make sure `jdtls` is installed by Mason
```
:Mason
```
if you didn't install it, press `i` on `jdtls` on Mason window


if your spotify's color is default, run this command below
$ spicetify apply

