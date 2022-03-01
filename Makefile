SRC= \
		./ft_atoi.c					./ft_strdup.c			\
		./ft_bzero.c					./ft_strjoin.c			\
		./ft_calloc.c					./ft_strlcat.c			\
		./ft_isalnum.c					./ft_strlcpy.c			\
		./ft_isalpha.c					./ft_strlen.c			\
		./ft_isascii.c					./ft_strmapi.c			\
		./ft_isdigit.c					./ft_strncmp.c			\
		./ft_islower.c					./ft_strncpy.c			\
		./ft_isprint.c					./ft_strnstr.c			\
		./ft_isspace.c					./ft_strrchr.c			\
		./ft_isupper.c					./ft_strtrim.c			\
		./ft_itoa.c					./ft_strdel.c			\
		./ft_memccpy.c					./ft_substr.c			\
		./ft_memchr.c					./ft_tolower.c			\
		./ft_memcmp.c					./ft_toupper.c			\
		./ft_memcmp.c					./ft_lstsize.c			\
		./ft_memcpy.c					./ft_lstnew.c			\
		./ft_memmove.c					./ft_lstlast.c			\
		./ft_memset.c					./ft_lstiter.c			\
		./ft_putchar_fd.c				./ft_lstdelone.c		\
		./ft_putendl_fd.c				./ft_lstclear.c			\
		./ft_putnbr_fd.c				./ft_lstadd_front.c		\
		./ft_putstr_fd.c				./ft_lstadd_back.c		\
		./ft_split.c					./ft_strequ.c			\
		./ft_strchr.c					./ft_ssplit.c			\
		./ft_strcpy.c					./ft_atof.c			\
		./ft_str_c_count.c


OBJCT= $(SRC:.c=.o)
NAME= libft.a
INCLUDES= ./
HEADER=libft.h

.PHONY: all clean fclean re so soclean

all: $(NAME)

$(NAME): $(OBJCT)
	ar rc $(NAME) $(OBJCT)
	ranlib $(NAME)

%.o: %.c $(HEADER) Makefile
	gcc -Wall -Wextra -Werror -c $< -o $@ -I $(INCLUDES)

clean:
	rm -rf $(OBJCT)

soclean:
	rm -rf *.so

fclean: clean soclean
	rm -rf $(NAME)
so:
	gcc -fPIC -Wall -Wextra -Werror -c  $(SRC)
	gcc -shared -o libft.so *.o
re: fclean all
