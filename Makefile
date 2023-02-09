update:
	@echo "update: .zshrc"
	@sh ${HOME}/.zshrc
activate:
	${PWD}/bin/activate.sh
setup:
	${PWD}/bin/setup.sh
nnn:
	${PWD}/bin/nnn.sh
macos:
	${PWD}/bin/setup.sh
	${PWD}/bin/brew.sh
	@make nnn
	@make activate
