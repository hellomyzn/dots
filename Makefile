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
# 	./src/myzn.sh
# 	./src/kitty.sh
# 	./src/tmux.sh
# 	./src/sketchybar.sh
# 	./src/git.sh
# 	./src/neofetch.sh
# 	./src/skhd.sh
	./src/aerospace.sh

# 	optional
# 	./src/nnn.sh
# 	./src/nvim.sh
# 	./src/yabai.sh

mac_bk:
	
	./src/zsh.sh
	
	
	
	@make activate
