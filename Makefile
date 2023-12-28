# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: atyurina <marvin@42.fr>                    +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2023/09/07 17:07:38 by atyurina          #+#    #+#              #
#    Updated: 2023/09/07 20:11:10 by atyurina         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

# gcc -c name.c // priduces a name.o object file
# ar -rc lib.a name.o // archive object file(s) and make a static library using ar

NAME := libftprintf.a
SRC := ft_printf.c ft_putstr.c ft_putnbr.c ft_putchar.c ft_putnbr_base.c \
       ft_putptr.c  ft_putnbr_u.c ft_format.c

OBJ := $(SRC:.c=.o)

CC = gcc
CFLAGS = -Wall -Wextra -Werror

all: $(NAME)

$(NAME): $(OBJ)
	ar -rcs $(NAME) $(OBJ)
	
%.o: %.c
	$(CC) $(CFLAGS) -c $< -o $@

clean:
	rm -f $(OBJ)

fclean: clean
	rm -f $(NAME)
	
re: fclean all

.PHONY: all clean fclean re
