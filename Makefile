NAME = Inception

all: $(NAME)

$(NAME):
		mkdir -p /home/$(USER)/data/wordpress-sites
		mkdir -p /home/$(USER)/data/data_db
		docker-compose -f ./srcs/docker-compose.yml up --build

down:
		docker-compose -f ./srcs/docker-compose.yml down

restart:
		docker-compose -f ./srcs/docker-compose.yml restart

prune:
		docker-compose -f ./srcs/docker-compose.yml down --rmi all --volumes

clean:
	rm -rf /home/$(USER)/data/wordpress-sites
	rm -rf /home/$(USER)/data/data_db
	rm -rf /home/$(USER)/data

fclean: clean prune

re: fclean all
