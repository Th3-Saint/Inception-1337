NAME = Inception

all: $(NAME)



$(NAME):
		mkdir -p /home/mrobaii/data/wordpress-sites
		mkdir -p /home/mrobaii/data/data_db
		docker-compose -f ./srcs/docker-compose.yml up --build

down:
		docker-compose -f ./srcs/docker-compose.yml down

restart:
		docker-compose -f ./srcs/docker-compose.yml restart

prune:
		docker-compose -f ./srcs/docker-compose.yml down --rmi all --volumes

clean:
	rm -rf /home/mrobaii/data/wordpress-sites
	rm -rf /home/mrobaii/data/data_db
	rm -rf /home/mrobaii/data

fclean: prune clean

re: fclean all
