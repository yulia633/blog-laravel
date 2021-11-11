setup: env-prepare install key db-prepare ide-helper

env-prepare:
	cp -n .env.example .env || true

install:
	composer install

key:
	php artisan key:generate

db-prepare:
	php artisan migrate:fresh --seed

ide-helper:
	php artisan ide-helper:eloquent
	php artisan ide-helper:gen
	php artisan ide-helper:meta
	php artisan ide-helper:mod -n

start:
	php artisan serve --host 0.0.0.0 --port 8000

lint:
	composer exec phpcs -v

lint-fix:
	composer exec phpcbf -v

test:
	php artisan test

test-coverage:
	XDEBUG_MODE=coverage php artisan test --coverage-clover build/logs/clover.xml

analyse:
	composer exec phpstan analyse -v -- --memory-limit=-1

check: lint analyse test

config-clear:
	php artisan config:clear

console:
	php artisan tinker

.PHONY: test
