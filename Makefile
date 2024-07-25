include .env

ifndef DOCKER_COMPOSE_COMMAND
override DOCKER_COMPOSE_COMMAND = docker-compose
endif

version?=0.1.0
version:
	@echo "Version: ${version}"

services=kafka
start:
	@echo "Starting the application"
	@${DOCKER_COMPOSE_COMMAND} -f docker-compose.yml up -d $(services)
	@${DOCKER_COMPOSE_COMMAND} logs -f $(services)
stop:
	@echo "Stopping the application"
	@${DOCKER_COMPOSE_COMMAND} -f docker-compose.yml down