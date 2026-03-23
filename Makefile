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
	bash ./src/brew.sh
	bash ./src/emacs.sh
	bash ./src/git.sh
	bash ./src/kitty.sh
	bash ./src/mac.sh
	bash ./src/neofetch.sh
	bash ./src/sketchybar.sh
	bash ./src/skhd.sh
	bash ./src/tmux.sh
	bash ./src/yabai.sh
	bash ./src/zsh.sh
	bash ./src/activate.sh
repo:
	bash ./src/git-repo.sh
