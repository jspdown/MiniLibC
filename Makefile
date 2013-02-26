

NAME		= miniLibc

CASM		= nasm
CC		= gcc
RM		= rm -f

SRC_PATH	= "./src/"
OBJ_PATH	= "./obj/"
ARCH		= elf64

SRC_C		=

OBJ_C		=

SRC_S		= $(SRC_PATH)my_strlen.s

OBJ_S		= $(OBJ_PATH)my_strlen.o

all:		$(NAME)

$(NAME):
		$(CASM) -f $(ARCH) $(SRC_S) -o $(OBJ)
		$(CC) $(OBJ_S) $(OBJ_C) -o $(NAME) 

clean:
		$(RM) $(OBJ)

fclean:		clean
		$(RM) $(NAME)
