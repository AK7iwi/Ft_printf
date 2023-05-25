CC				= gcc 
RM				= rm -f
CFLAGS			= -Wall -Wextra -Werror -I.
LDLIBS 			= ./libft/libft.a
NAME			= libftprintf.a
SRCS			=  ft_printf.c  ./fct/ft_c.c ./fct/ft_s.c ./fct/ft_p.c ./fct/ft_d.c\
					./fct/ft_i.c ./fct/ft_u.c ./fct/ft_x.c ./fct/ft_xmaj.c ./fct/ft_pour.c\
					
OBJS			= $(SRCS:.c=.o)

all:			$(NAME) 

$(NAME):		$(OBJS)
				make -C ./libft 
				cp libft/libft.a $(NAME)
#				$(CC) $(SRCS) $(LDLIBS) $(CFLAGS) (Pour main et avoir l'executable)
				ar rcs  $(NAME) $(OBJS) 

clean:			
				$(RM) $(OBJS)
				 
fclean:	 		clean
				make  fclean -C ./libft
				$(RM) $(NAME)	
	
re:				fclean $(NAME)

.PHONY:			all clean fclean re

