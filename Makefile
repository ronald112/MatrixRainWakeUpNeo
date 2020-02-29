NAME = race05

INC = inc/header.h \

HEADBIN = header.h \

SRCS = src/main.c \

SRCSBIN = main.c \

CFLAGS = -std=c11 -Wall -Wextra -Werror -Wpedantic -lncurses

all: install uninstall 
	
install:
	@cp $(SRCS) .
	@cp $(INC) .
	@gcc $(CFLAGS) -o $(NAME) $(SRCSBIN)	

uninstall: 
	@rm -rf $(SRCSBIN)
	@rm -rf $(HEADBIN)

clean: uninstall
	@rm -rf $(NAME)	
	
reinstall:
	@cp $(SRCS) .
	@cp $(INC) .
	@gcc $(CFLAGS) -o $(NAME) $(SRCSBIN)

	@rm -rf $(SRCSBIN)
	@rm -rf $(HEADBIN)
