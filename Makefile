infra-up:
	docker compose up -d;

use:
	curl -H "API_KEY: abc123" http://localhost:8080/

infra-down:
	docker compose down;

docker-clean-up:
	docker rm $(docker ps -aq) -f

desafio: infra-up use
