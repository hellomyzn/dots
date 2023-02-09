update:
	@echo "update: .zshrc"
	@sh ${HOME}/.zshrc
activate:
	${PWD}/src/activate.sh
setup:
	${PWD}/bin/setup.sh
vim:
	${PWD}/src/zsh.sh
	${PWD}/src/nvim.sh
	${PWD}/src/tmux.sh
emacs:
	${PWD}/src/zsh.sh
	${PWD}/src/emacs.sh
	${PWD}/src/tmux.sh
mac:
	${PWD}/src/zsh.sh
	${PWD}/src/brew.sh
	${PWD}/src/neofetch.sh
	${PWD}/src/nnn.sh
	${PWD}/src/nvim.sh
	${PWD}/src/sketchybar.sh
	${PWD}/src/skhd.sh
	${PWD}/src/tmux.sh
	${PWD}/src/yabai.sh
	${PWD}/src/mpd.sh
	@make activate
