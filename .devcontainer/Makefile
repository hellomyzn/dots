include .env
export $(shell sed 's/=.*//' .env)

USER_FLAG=--user ${USER_NAME}
PROJECT_FLAG=--project-name ${PROJECT_NAME}_devcontainer

up:
	@echo vscodeからcontainerを立ててください。
build:
	@echo vscodeからcontainerを立ててください。
stop:
	docker-compose $(PROJECT_FLAG) stop
down:
	docker-compose $(PROJECT_FLAG) down
restart:
	@make down
	@make up
destroy:
	docker-compose $(PROJECT_FLAG) down --rmi all --volumes --remove-orphans
destroy-volumes:
	docker-compose $(PROJECT_FLAG) down --volumes
ps:
	docker-compose $(PROJECT_FLAG) ps
logs:
	docker-compose $(PROJECT_FLAG) logs
login:
	docker compose $(PROJECT_FLAG) exec $(USER_FLAG) workspace bash
run:
	@make up
	@echo "Waiting for container to be ready..."
# 必要なら調整（健康チェック導入もあり）run:
	@sleep 2
	docker compose $(PROJECT_FLAG) exec $(USER_FLAG) workspace bash -c "python main.py"
