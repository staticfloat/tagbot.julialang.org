
deploy:
	docker-compose up --build --remove-orphans -d
# "test" is just an alias for "deploy"
test: deploy

# This builds the docker image but doesn't actually bring it up.
build:
	docker-compose build --pull

# Stops the docker container btu doesn't delete anything
stop:
	docker-compose stop

# Stops the docker container and destroys various bits of state like networking interfaces
down:
	docker-compose down --remove-orphans

# Displays a live view of the logs
logs:
	docker-compose logs -f
