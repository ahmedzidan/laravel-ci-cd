ifndef env
	env=dev
endif

env_config=environment/$(env).yml
prefix=myproject
build:
	docker-compose -p ${prefix} -f $(env_config) rm -vsf
	docker-compose -p ${prefix} -f $(env_config) down -v --remove-orphans
	docker-compose -p ${prefix} -f $(env_config) up --build -d
	cp .env.dev .env
up:
	docker-compose -p ${prefix} -f $(env_config) up -d

down:
	docker-compose -p ${prefix} -f $(env_config) down

composer-install:
	docker-compose -p $(prefix) -f $(env_config) exec php-fpm composer -n install

composer-update:
	docker-compose -f $(env_config) exec php-fpm composer -n update

shell:
	docker-compose -f $(env_config) exec php-fpm sh

analyze:
	docker-compose -f $(env_config) exec php-fpm vendor/bin/phpstan analyze --configuration=phpstan.neon

nginx:
	docker cp environment/nginx/config/conf.d/ nginx:/etc/nginx/conf.d/
	docker cp environment/nginx/config/nginx.conf nginx:/etc/nginx/nginx.conf
	docker exec iprice-partners-nginx sh -c "nginx -t && nginx -s reload"
