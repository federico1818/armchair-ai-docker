SHELL = /bin/sh

.PHONY: start stop in-py

start:
	@docker-compose -f ./docker-compose.yml -p aa up -d

stop:
	@docker-compose -f ./docker-compose.yml -p aa down

in-py:
	@docker exec -it aa-python bash