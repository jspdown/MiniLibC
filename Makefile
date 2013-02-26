

NAME		= miniLibc

CASM		= nasm
CC		= gcc
RM		= rm -f

SRC_PATH	= ./src/
OBJ_PATH	= ./obj/
UNIT_PATH	= ./unit/
UNIT_OBJ_PATH	= ./unit/obj/

ARCH		= elf64

SRC_C		= $(UNIT_PATH)main.c
SRC_S		= $(SRC_PATH)my_strlen.s \
		$(SRC_PATH)my_strchr.s

OBJ_C		= $(patsubst $(UNIT_PATH)%.c, $(UNIT_OBJ_PATH)%.o, $(SRC_C))
OBJ_S		= $(patsubst $(SRC_PATH)%.s, $(OBJ_PATH)%.o, $(SRC_S))

all:		$(NAME)

$(OBJ_C):	$(UNIT_OBJ_PATH)%.o: $(UNIT_PATH)%.c
		$(CC) -c $< -o $@ -g

$(OBJ_S):	$(OBJ_PATH)%.o: $(SRC_PATH)%.s
		$(CASM) -f $(ARCH) $< -o $@ -g

$(NAME):	$(OBJ_S) $(OBJ_C)
		$(CC) $(OBJ_S) $(OBJ_C) -o $(NAME) 

clean:
		$(RM) $(OBJ_S) $(OBJ_C)

fclean:		clean
		$(RM) $(NAME)

re:		fclean all
