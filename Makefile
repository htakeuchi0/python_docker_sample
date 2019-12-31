all: init

init:
	sudo docker-compose up -d --build
	sudo docker-compose exec python_docker_sample bash

test:
	sudo docker-compose run python_docker_sample python -m unittest tests/test_sample.py

clean:
	sudo docker-compose down --rmi all
	
.PHONY:	init test clean
