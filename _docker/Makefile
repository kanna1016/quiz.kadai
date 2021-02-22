build:
	docker-compose build

up:
	docker-compose up -d

down:
	docker-compose down

stop:
	docker-compose stop

setup:
	cp ../.env.example.docker ../.env
	docker-compose build
	docker-compose run web bash -c "cd /var/www/html && composer install && npm install && npm run dev && php artisan storage:link && composer dump-autoload"

composer.dump:
	docker-compose run web bash -c "cd /var/www/html && composer dump-autoload"

composer:
	docker-compose run web bash -c "cd /var/www/html && composer install"

migrate:
	docker-compose run web bash -c "cd /var/www/html && php artisan migrate && php artisan migrate --env=testing"

seed:
	docker-compose run web bash -c "cd /var/www/html && php artisan db:seed"

php.lint:
	docker-compose  run web bash -c "cd /var/www/html && npm install && ./vendor/bin/php-cs-fixer fix ./"

php.lint.dry:
	docker-compose  run web bash -c "cd /var/www/html && npm install &&  ./vendor/bin/php-cs-fixer fix ./ --dry-run --verbose"

php.test:
	docker-compose  run web bash -c "cd /var/www/html && ./vendor/bin/phpunit"

front.build:
	docker-compose  run web bash -c "cd /var/www/html && npm install && npm run dev"

front.watch:
	docker-compose  run web bash -c "cd /var/www/html && npm run watch"

js.lint:
	docker-compose  run web bash -c "cd /var/www/html && npm run eslint"

npm.install:
	docker-compose  run web bash -c "cd /var/www/html && npm install ${MODULE_NAME}"

composer.require:
	docker-compose  run web bash -c "cd /var/www/html && composer require ${MODULE_NAME}"

lint:
	docker-compose  run web bash -c "cd /var/www/html && npm run eslint && ./vendor/bin/php-cs-fixer fix ./"

routes:
	docker-compose  run web bash -c "cd /var/www/html && php artisan route:list"
