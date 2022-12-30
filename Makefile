# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: tstrassb <tstrassb@student.42wolfsburg.    +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2022/12/15 13:35:08 by tstrassb          #+#    #+#              #
#    Updated: 2022/12/27 13:32:52 by tstrassb         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME		=	libft.a

SRCS		=	ft_isalnum.c ft_isprint.c ft_memcmp.c ft_calloc.c ft_strjoin.c\
			ft_strlcat.c ft_strncmp.c ft_atoi.c ft_isalpha.c ft_strtrim.c\
			ft_memcpy.c ft_strchr.c ft_strlcpy.c ft_strdup.c ft_split.c\
			ft_strnstr.c ft_tolower.c ft_bzero.c ft_isascii.c ft_itoa.c\
			ft_memmove.c ft_strlen.c ft_strrchr.c ft_substr.c ft_strmapi.c\
			ft_toupper.c ft_isdigit.c ft_memchr.c ft_memset.c ft_striteri.c\
			ft_putchar_fd.c ft_putstr_fd.c ft_putendl_fd.c ft_putnbr_fd.c\

BONUS		=	ft_lstnew.c ft_lstadd_front.c ft_lstsize.c ft_lstlast.c ft_lstadd_back.c\
			ft_lstdelone.c ft_lstclear.c ft_lstiter.c ft_lstmap.c\

OBJS		=	${SRCS:%.c=%.o}

OBJSBONUS	=	${BONUS:%.c=%.o}

CC			=	cc

RM			=	rm -f

CFLAGS		=	-Wall -Wextra -Werror

RED			=	\033[1;31m
GREEN		=	\033[1;32m
YELLOW		=	\033[1;33m
BLUE		=	\033[1;34m
RESET		=	\033[0m

all:		${NAME}
				@echo "$(RED)------------done------------$(RESET)"

${NAME}: ${OBJS}
				@ar rcs ${NAME} ${OBJS}

%.o:%.c libft.h
				@echo "Compiling$(YELLOW)" $< "$(RESET)"
				@${CC} ${CFLAGS} -c $< -o $@
				@echo "Added new file$(BLUE)" $@ "$(RESET)"

bonus:		${OBJS} ${OBJSBONUS}
				@ar rcs ${NAME} ${OBJS} ${OBJSBONUS}
				@echo "$(RED)------------done------------$(RESET)"

clean:
				@echo "$(GREEN)Cleaned$(RESET)"
				@${RM} ${OBJS} ${OBJSBONUS}

fclean: clean
				@${RM} ${NAME}

re:			fclean all
