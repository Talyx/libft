#===============================================#
#					 Colors						#
#===============================================#

FAIL =\033[91m
GREEN =\033[32m
OKCYAN =\033[96m
WARNING =\033[93m
RESET =\033[0m
UP =\033[A
CUT =\033[K

#===============================================#
# 					Vars						#
#===============================================#

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
		./ft_str_c_count.c				./ft_putchar.c			\
		./ft_putstr.c					./ft_putnbr.c			\
		./ft_error_exit.c				./ft_split_clear.c		\


OBJCT= $(SRC:.c=.o)
NAME= libft.a
INCLUDES= ./
HEADER=libft.h

#===============================================#
# 					Rules						#
#===============================================#

.PHONY: all clean fclean re so soclean

all: $(NAME)
	@echo "$(GREEN)Success$(RESET)"

$(NAME): $(OBJCT)
	@echo "$(OKCYAN)Build $(NAME) library...$(RESET)"
	@ar rc $(NAME) $(OBJCT)
	@ranlib $(NAME)

%.o: %.c $(HEADER) Makefile
	@echo "$(WARNING)Compiling $@... $(RESET)"
	@gcc -Wall -Wextra -Werror -c $< -o $@ -I $(INCLUDES)
	@printf "$(UP)$(CUT)"

clean:
	@echo "$(FAIL)Cleaning $(NAME) obj files...$(RESET)"
	@rm -rf $(OBJCT)

soclean:
	@echo "$(FAIL)Remove libft.so...$(RESET)"
	@rm -rf libft.so

fclean: clean soclean
	@echo "$(FAIL)Remove $(NAME)...$(RESET)"
	@rm -rf $(NAME)
so:
	@echo "$(OKCYAN)Build libft.so library...$(RESET)"
	@gcc -fPIC -Wall -Wextra -Werror -c  $(SRC)
	@gcc -shared -o libft.so *.o
re: fclean all
