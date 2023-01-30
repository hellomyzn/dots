update:
	@echo "update: .zshenc"
	@sh ${HOME}/.zshenv
	@echo "update: .zshrc"
	@sh ${HOME}/.zshrc
activate:
	${PWD}/bin/activate.sh
setup:
	${PWD}/bin/setup.sh
	@make update
macos:
	${PWD}/bin/setup.sh
	${PWD}/bin/brew.sh
	@make activate