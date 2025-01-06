build:
	docker-compose build

init:
	docker-compose run terraform init

validate:
	docker-compose run terraform validate
	
plan:
	docker-compose run terraform plan

apply:
	docker-compose run terraform apply -auto-approve

stop:
	docker-compose down