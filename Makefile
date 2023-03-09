update:
	@echo "update: .zshrc"
	@sh ${HOME}/.zshrc
activate:
	${PWD}/src/activate.sh
setup:
	${PWD}/bin/setup.sh
vim:
	./src/myzn.sh
	./zsh-autosuggestions.sh
	./src/zsh.sh
	./src/nvim.sh
	./src/tmux.sh
	./src/nnn.sh
emacs:
	./src/zsh.sh
	./src/emacs.sh
	./src/tmux.sh
mac:
	./src/myzn.sh
	./src/zerotier.sh
	./zsh-autosuggestions.sh
	./src/zsh.sh
	./src/brew.sh
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
