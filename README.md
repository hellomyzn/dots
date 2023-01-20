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