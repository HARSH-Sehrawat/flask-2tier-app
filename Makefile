# Define Docker compose command
DOCKER_COMPOSE := docker-compose

# Build target
build:
	$(DOCKER_COMPOSE) build

# Run target
run:
	$(DOCKER_COMPOSE) up -d

# Stop target
stop:
	$(DOCKER_COMPOSE) down

# Clean target
clean: stop
	$(DOCKER_COMPOSE) rm -f
	docker system prune -f

