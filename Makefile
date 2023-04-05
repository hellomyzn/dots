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
	./src/git.sh
	./src/nvim.sh
	./src/tmux.sh
	./src/nnn.sh
emacs:
	./src/myzn.sh
	./src/zsh.sh
	./src/pacman.sh
	./src/git.sh
	./src/emacs.sh
	./src/tmux.sh
mac:
	./src/myzn.sh
	./src/zerotier.sh
	./src/zsh.sh
	./src/brew.sh
	./src/git.sh
	./src/neofetch.sh
	./src/nnn.sh
	./src/nvim.sh
	./src/sketchybar.sh
	./src/skhd.sh
	./src/tmux.sh
	./src/yabai.sh
	./src/mpd.sh
	./src/zerotier.sh
	./src/kitty.sh
	@make activate
