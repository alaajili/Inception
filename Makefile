build:
	@cd srcs && docker-compose --env-file .env build
up: build
	@cd srcs && docker-compose --env-file .env up
down:
	@cd srcs && docker-compose down -v 
fclean: down
	@docker system prune -af --volumes

re: fclean up