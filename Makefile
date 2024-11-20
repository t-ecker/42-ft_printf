NAME = libftprintf.a

CC = cc
CFLAGS = -Wall -Werror -Wextra

SRC = 	./src/ft_printf.c \
		./src/print_c.c \
		./src/print_i_d.c \
		./src/print_p.c \
		./src/print_s.c \
		./src/print_u.c \
		./src/print_x_X.c


OBJ_DIR = ./obj
OBJ_FILES		=	$(patsubst ./src/%.c, $(OBJ_DIR)/%.o, $(SRC))


all: $(NAME)

$(NAME): $(OBJ_FILES)
	@ar rcs $(NAME) $^

$(OBJ_DIR):
	@mkdir -p $(OBJ_DIR)

$(OBJ_DIR)/%.o: ./src/%.c | $(OBJ_DIR)
	@mkdir -p $(@D)
	$(CC) $(CFLAGS) -c $< -o $@

clean:
	@rm -rf $(OBJ_DIR)

fclean: clean
	@rm -f $(NAME)

re: fclean all

.PHONY: all clean fclean re