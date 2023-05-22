up:
	@cd srcs && docker-compose --env-file .env up -d
down:
	@cd srcs && docker-compose down
fclean: down
	@docker system prune -af --volumes

re: fclean up