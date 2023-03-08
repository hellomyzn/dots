MY RICE(WIP)
<img width="1680" alt="Screenshot 2023-01-28 at 15 18 29" src="https://user-images.githubusercontent.com/20104403/215241640-36121c02-ef23-4ee0-b8d8-66d69272a3f9.png">


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
