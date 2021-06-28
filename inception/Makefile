# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: mochegri <mochegri@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2020/11/04 17:18:52 by mochegri          #+#    #+#              #
#    Updated: 2021/06/28 11:04:32 by mochegri         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

# Makefile build les images Docker via docker-composev
# container Docker contenant NGINX avec TLSv1.2 ou TLSv1.3 uniquement.
# Un container Docker contenant WordPress + php-fpm (installé et configuré).
# Un container Docker contenant MariaDB.
# Un volume contenant votre base de données WordPress.
# Un second volume contenant les fichiers de votre site WordPress.
# Un docker-network qui fera le lien entre vos containers.
# La ligne network(s) doit être présente dans votre fichier docker-compose.yml.
# Deux utilisateurs seront présents dans votre base de données WordPress,
# 	l’un d’eux étant le compte Admin
# Vos volumes seront disponibles dans le dossier /home/login/data
# nom de domaine sera mochegri.42.fr
# variables d’environnement est obligatoire .env afin de stocker vos variables
# Votre container NGINX doit être le seul point d’entrée de votre
# 	infrastructure par le port 443 uniquement en utilisant le protocole TLSv1.2 ou TLSv1.3.
# redis
# un serveur FTP
# Création d’un petit site statique,
# Adminer

NAME = inception

flags = 

SRCS = 	

$(NAME):

all : $(NAME)

clean:

fclean:	clean

re:		fclean all

run: re

save : re

bonus : clean

