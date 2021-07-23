bash: build
	docker-compose exec python_docker_sample bash

test:
	@docker-compose run python_docker_sample python -m unittest tests/test_sample.py

build:
	docker-compose up -d --build

run:
	@docker-compose run python_docker_sample python -m sandbox.sample
	
.PHONY:	bash test build run
