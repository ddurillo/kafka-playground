include .env

ifndef DOCKER_COMPOSE_COMMAND
override DOCKER_COMPOSE_COMMAND = docker-compose
endif

version?=0.1.0
version:
	@echo "Version: $(version)"

service=kp-kafka
start:
	@echo "Starting the application"
	@$(DOCKER_COMPOSE_COMMAND) -f docker-compose.yml up -d $(service)
	@$(DOCKER_COMPOSE_COMMAND) logs -f $(service)
stop:
	@echo "Stopping the application"
	@$(DOCKER_COMPOSE_COMMAND) -f docker-compose.yml down
restart: stop start
attach-shell:
	# -w is to set the working directory by default
	@$(DOCKER_COMPOSE_COMMAND) exec -w /usr/src/app/src/ $(service) bash