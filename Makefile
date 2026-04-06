DOCKER_COMPOSE=docker compose -p ministack-playground -f ./docker-compose.yml

.PHONY: dcup dcdown dc aws-shell dcrestart

dcup:
	$(DOCKER_COMPOSE) up -d

dcdown: 
	$(DOCKER_COMPOSE) down --remove-orphans

dcrestart: dcdown dcup

dc:
	@echo "$(DOCKER_COMPOSE)"

aws-shell:
	$(DOCKER_COMPOSE) run --rm -it --entrypoint /bin/bash aws-cli