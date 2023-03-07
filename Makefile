update:
	@echo "update: .zshrc"
	@sh ${HOME}/.zshrc
activate:
	${PWD}/src/activate.sh
setup:
	${PWD}/bin/setup.sh
vim:
	./src/myzn.sh
	./src/zsh.sh
	./src/nvim.sh
	./src/tmux.sh
	./src/nnn.sh
emacs:
	./src/zsh.sh
	./src/emacs.sh
	./src/tmux.sh
mac:
	${PWD}/src/myzn.sh
	${PWD}/src/zerotier.sh
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
	${PWD}/src/zerotier.sh
	${PWD}/src/kitty.sh
	@make activate
