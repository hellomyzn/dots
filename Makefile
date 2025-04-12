up:
	docker-compose up -d --build
build:
	docker-compose build --no-cache --force-rm
stop:
	docker-compose stop
down:
	docker-compose down
restart:
	@make down
	@make up
destroy:
	docker-compose down --rmi all --volumes --remove-orphans
destroy-volumes:
	docker-compose down --volumes
ps:
	docker-compose ps
logs:
	docker-compose logs
exec:
	docker-compose exec emacs bash
md:
	docker-compose exec emacs emacs --batch -l /opt/org/tools/export-org-to-md.el
start:
	docker-compose up -d --build 
	@make exec