# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: kosakats <kosakats@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2024/11/01 22:40:07 by kosakats          #+#    #+#              #
#    Updated: 2024/11/10 19:31:38 by kosakats         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #


NAME    =    libft.a
SRCS    =    ft_atoi.c    ft_bzero.c    ft_isalnum.c    ft_isalpha.c    \
		ft_isascii.c    ft_isdigit.c    ft_isprint.c    ft_memchr.c    ft_memcmp.c    \
		ft_memcpy.c    ft_memmove.c    ft_memset.c    ft_strchr.c      \
		ft_strlcat.c    ft_strlcpy.c    ft_strlen.c    ft_strncmp.c    ft_strnstr.c    \
		ft_strrchr.c    ft_tolower.c    ft_toupper.c             \
		ft_calloc.c ft_strdup.c   ft_strjoin.c ft_split.c\
		ft_itoa.c   \
		ft_putchar_fd.c	ft_putstr_fd.c	ft_putendl_fd.c	ft_putnbr_fd.c \
		ft_substr.c ft_strtrim.c \
		ft_striteri.c ft_strmapi.c \

# SRCSBONUS    =    ft_lstnew.c    ft_lstadd_front.c    ft_lstsize.c    ft_lstlast.c    \
# 		ft_lstadd_back.c    ft_lstdelone.c    ft_lstclear.c    ft_lstiter.c    ft_lstmap.c

OBJS    =    $(SRCS:.c=.o)
BONUSOBJS    =    $(SRCSBONUS:.c=.o)

BONUS_FLAG = .bonus_done

CC    =    cc
CFLAGS    =    -Wall -Wextra -Werror

all: $(NAME)

$(NAME): $(OBJS)
		ar rcs $(NAME) $(OBJS)

bonus: $(BONUS_FLAG)

$(BONUS_FLAG):$(BONUSOBJS)
		ar rcs $(NAME) $(BONUSOBJS)
		@touch $(BONUS_FLAG)

# すでにある場合は何もせず、出力しない
$(OBJS): %.o: %.c
		$(CC) $(CFLAGS) -c $< -o $@

clean:
		rm -f $(OBJS) $(BONUSOBJS) $(BONUS_FLAG)

fclean: clean
		rm -f $(NAME)

re: fclean all

.PHONY: all clean fclean re bonus

so: $(OBJS)
		$(CC) -fPIC $(CFLAGS) -c $(SRCS)
		gcc -shared -o libft.so $(OBJS)