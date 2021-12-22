# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: dmylonas <dmylonas@student.42wolfsburg.de> +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2021/05/30 19:45:30 by dmylonas          #+#    #+#              #
#    Updated: 2021/09/26 10:32:02 by dmylonas         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

SRCS		= 	ft_atoi.c ft_isalpha.c ft_itoa.c ft_memcpy.c ft_putendl_fd.c\
				ft_strchr.c ft_strlcpy.c ft_strnstr.c ft_tolower.c ft_bzero.c\
				ft_isascii.c ft_memccpy.c ft_memmove.c ft_putnbr_fd.c ft_strdup.c\
				ft_strlen.c ft_strrchr.c ft_toupper.c ft_calloc.c ft_isdigit.c\
				ft_memchr.c ft_memset.c ft_putstr_fd.c	ft_strjoin.c ft_strmapi.c\
				ft_strtrim.c ft_isalnum.c ft_isprint.c ft_memcmp.c ft_putchar_fd.c\
				ft_split.c ft_strlcat.c ft_strncmp.c ft_substr.c 

OBJS		=	$(SRCS:.c=.o)

SRCS_BONUS	=	ft_lstnew.c ft_lstadd_front.c ft_lstsize.c ft_lstlast.c\
				ft_lstadd_back.c ft_lstdelone.c ft_lstclear.c ft_lstiter.c ft_lstmap.c

OBJS_BONUS	=	$(SRCS_BONUS:.c=.o)

INCLUDES	=	libft.h

FLAGS		=	-Wall -Wextra -Werror

CC			=	gcc

GCC			=	$(CC) $(FLAGS)

NAME		=	libft.a

all:		$(NAME)

%.o:		%.c $(INCLUDES)
			$(GCC) -c -o $@ $<

$(NAME):	$(OBJS)
			ar rcs $(NAME) $(OBJS)

bonus:		$(OBJS) $(OBJS_BONUS)
			ar rcs $(NAME) $(OBJS) $(OBJS_BONUS)

libft:		$(NAME)

clean:
			rm -f $(OBJS) $(OBJS_BONUS)

fclean:		clean
			rm -f $(NAME)

re:			fclean $(NAME)

.PHONY:		all clean fclean bonus re


# NAME = libft.a
# CFLAGS = -Wall -Werror -Wextra
# SRCS = ft_memset.c ft_bzero.c ft_memcpy.c ft_atoi.c ft_calloc.c ft_isalnum.c \
# 	ft_isalpha.c ft_isascii.c ft_isdigit.c ft_isprint.c \
# 	ft_memchr.c ft_memcmp.c ft_memmove.c ft_strchr.c ft_strdup.c \
# 	ft_strlen.c ft_strncmp.c ft_strrchr.c ft_tolower.c ft_toupper.c \
# 	ft_strlcat.c ft_strlcpy.c ft_strnstr.c ft_atoi.c ft_substr.c \
# 	ft_strjoin.c ft_itoa.c ft_strtrim.c ft_strmapi.c ft_striteri.c \
# 	ft_putchar_fd.c ft_putstr_fd.c ft_putendl_fd.c ft_putnbr_fd.c \
# 	ft_split.c

# BONUS = ft_lstadd_back.c ft_lstadd_front.c ft_lstclear.c \
# 	ft_lstdelone.c ft_lstiter.c ft_lstlast.c \
# 	ft_lstmap.c ft_lstnew.c ft_lstsize.c

# OBJS = $(SRCS:.c=.o)
# BONUS_OBJS = $(BONUS:.c=.o)

# all: $(NAME)

# $(NAME):
# 	gcc $(CFLAGS) -c $(SRCS)
# 	ar rc $(NAME) $(OBJS)
# 	ranlib $(NAME)

# bonus: $(OBJS) $(BONUS_OBJS)
# 	ar rcs $(NAME) $(OBJS) $(BONUS_OBJS)

# clean: 
# 	rm -f $(OBJS)

# fclean: clean
# 	rm -f $(NAME)

# re: fclean all

# .PHONY: all clean fclean re bonus