NAME = libftprintf.a
# LIBFTNAME = libft.a
# LIBFTDIR = libft


CC = gcc
CFLAGS = -Wall -Werror -Wextra

SRCS = ft_printf.c print_c.c print_i_d.c \
		print_p.c print_s.c print_u.c print_x_X.c check.c
OBJS = $(SRCS:.c=.o)

all: $(NAME)

# makelibft:
# 	@make -C $(LIBFTDIR)
# 	@cp $(LIBFTDIR)/$(LIBFTNAME) .
# 	@mv $(LIBFTNAME) $(NAME)

# $(NAME): makelibft $(OBJS)
# 	@ar -r $(NAME) $(OBJS)
$(NAME): $(OBJS)
	@ar rcs $(NAME) $(OBJS)

clean:
	@rm -f $(OBJS) a.out
#	@cd $(LIBFTDIR) && make clean

fclean: clean
	@rm -f $(NAME)
#	@cd $(LIBFTDIR) && make fclean

re: fclean all

.PHONY:	all clean fclean re