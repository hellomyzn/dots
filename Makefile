update:
	@echo "update: .zshrc"
	@sh ${HOME}/.zshrc
activate:
	${PWD}/bin/activate.sh
setup:
	${PWD}/bin/setup.sh
nnn:
	${PWD}/bin/nnn.sh
emacs:
	${PWD}/src/emacs.sh
	${PWD}/src/neofetch.sh
	${PWD}/src/nnn.sh
	${PWD}/src/nvim.sh
	${PWD}/src/sketchybar.sh
	${PWD}/src/skhd.sh
	${PWD}/src/tmux.sh
	${PWD}/src/yabai.sh
	${PWD}/src/zsh.sh
macos:
	${PWD}/bin/setup.sh
	${PWD}/bin/brew.sh
	@make nnn
	@make activate
