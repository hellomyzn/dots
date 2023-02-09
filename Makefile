update:
	@echo "update: .zshrc"
	@sh ${HOME}/.zshrc
activate:
	${PWD}/bin/activate.sh
setup:
	${PWD}/bin/setup.sh
emacs:
	${PWD}/src/emacs.sh
	${PWD}/src/zsh.sh
mac:
	${PWD}/src/mpd.sh
	
	
	@make activate
