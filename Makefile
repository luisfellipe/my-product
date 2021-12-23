POSTGRES_USER=docker
POSTGRES_PASSWORD=postgres
build:
	docker-compose build

up:
	docker-compose up -d

down:
	docker-compose down

start:
	docker-compose start

stop:
	docker-compose stop

sh:
	docker-compose exec --user=${POSTGRES_USER}

sh\:db:
	docker-compose exec database bash

help:
	@ echo "$(green) make build	$(white) Build or rebuild services"
	@ echo "$(green) make up	$(white) Run application containers"
	@ echo "$(green) make down	$(white) Stops containers and $(red)REMOVES $(white)containers and networks created by $(green)make up"
	@ echo "$(green) make start	$(white) Starts existing containers after $(green)make stop"
	@ echo "$(green) make stop	$(white) Stops running containers without removing them. They can be started again with $(green)make start"
	@ echo "$(green) make sh	$(white) Connects to the serverless container by sh"
