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
	./src/emacs.sh
mac:
	./src/brew.sh
	./src/emacs.sh
	./src/git.sh
	./src/kitty.sh
	./src/mac.sh
	./src/neofetch.sh
	./src/sketchybar.sh
	./src/skhd.sh
	./src/tmux.sh
	./src/yabai.sh
	./src/zsh.sh
	./src/activate.sh

mac_bk:
	
	./src/zsh.sh
	
	
	
	@make activate
