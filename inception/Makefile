NAME = Inception

all: $(NAME)

$(NAME):
		mkdir -p /Users/mrobaii/data/wordpress-sites
		mkdir -p /Users/mrobaii/data/data_db
		docker-compose -f ./srcs/docker-compose.yml up --build

down:
		docker-compose -f ./srcs/docker-compose.yml down

restart:
		docker-compose -f ./srcs/docker-compose.yml restart

prune:
		docker-compose -f ./srcs/docker-compose.yml down --rmi all --volumes

clean:
	rm -rf /Users/mrobaii/data/wordpress-sites
	rm -rf /Users/mrobaii/data/data_db

fclean: clean prune

re: fclean all