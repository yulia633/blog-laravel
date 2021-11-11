
deploy:
	# git push heroku master

# install: install-app install-frontend

compose: compose-clear compose-build compose-setup compose-start

compose-start:
	docker-compose up --abort-on-container-exit

compose-stop:
	docker-compose stop || true

compose-down:
	docker-compose down --remove-orphans || true

compose-clear:
	docker-compose down -v --remove-orphans || true

compose-logs:
	docker-compose logs -f

compose-setup:
	docker-compose run --rm application make setup
	docker-compose run --rm frontend make setup

compose-app-bash:
	docker-compose run --rm application bash

compose-frontend-bash:
	docker-compose run --rm frontend bash

compose-app-console:
	docker-compose run --rm application make console

compose-build:
	docker-compose build

compose-install: compose-app-install compose-frontend-install

compose-app-install:
	docker-compose run --rm application make install

compose-frontend-install:
	docker-compose run --rm frontend make install

compose-db-prepare:
	docker-compose run --rm application make db-prepare

compose-lint:
	docker-compose run --rm application make lint

compose-lint-fix:
	docker-compose run --rm application make lint-fix

compose-app-test:
	docker-compose run application make test

compose-app-test-coverage:
	docker-compose run --rm application make test-coverage

compose-app-check:
	docker-compose run --rm application make check

compose-adminer:
	docker-compose up --abort-on-container-exit adminer

ci:
	# docker-compose -f docker-compose.ci.yml -p hexlet-sicp-ci build
	# docker-compose -f docker-compose.ci.yml -p hexlet-sicp-ci run application make setup
	# docker-compose -f docker-compose.ci.yml -p hexlet-sicp-ci up --abort-on-container-exit
	# docker-compose -f docker-compose.ci.yml -p hexlet-sicp-ci down -v --remove-orphans
