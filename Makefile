MAIN_SERVICE_NAME=rancher

ps:
	docker compose ps

logs:
	docker compose logs -f

l: logs

build:
	docker compose build

up:
	docker compose up -d

stop:
	docker compose stop

down:
	docker compose down

prune:
	docker system prune -f -a

restart: stop up

recreate: build stop up

r: recreate

rl: r l

rs: r s

shell:
	docker composekubectl exec ${MAIN_SERVICE_NAME} bash

s: shell
