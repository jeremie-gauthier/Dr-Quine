# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: jergauth <jergauth@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2020/08/09 16:57:31 by jergauth          #+#    #+#              #
#    Updated: 2020/08/09 18:34:12 by jergauth         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

COLLEEN_PATH	=	Colleen
GRACE_PATH	=	Grace
SULLY_PATH = Sully

COLLEEN	=	$(COLLEEN_PATH)/Colleen
GRACE	=	$(GRACE_PATH)/Grace
SULLY	= $(SULLY_PATH)/Sully

DIR_O	=	.objs

SOURCES_COLLEEN	=	Colleen.c
OBJS_COLLEEN	=	$(SOURCES_COLLEEN:.c=.o)
DIR_O_COLLEEN	=	$(DIR_O)/$(COLLEEN_PATH)
DIR_PRE_COLLEEN= $(addprefix $(DIR_O_COLLEEN)/, $(OBJS_COLLEEN))

SOURCES_GRACE	=	Grace.c
OBJS_GRACE	=	$(SOURCES_GRACE:.c=.o)
DIR_O_GRACE	=	$(DIR_O)/$(GRACE_PATH)
DIR_PRE_GRACE= $(addprefix $(DIR_O_GRACE)/, $(OBJS_GRACE))

SOURCES_SULLY	=	Sully.c
OBJS_SULLY	=	$(SOURCES_SULLY:.c=.o)
DIR_O_SULLY	=	$(DIR_O)/$(SULLY_PATH)
DIR_PRE_SULLY	=	$(addprefix $(DIR_O_SULLY)/,$(OBJS_SULLY))

CC		=	clang

CFLAGS	=	-Wall -Werror -Wextra

RM		=	rm -f

CLEAN	=	clean

all:	$(COLLEEN) $(GRACE) $(SULLY)


$(DIR_O_COLLEEN)/%.o: $(COLLEEN_PATH)/%.c
		$(CC) -c -o $@ $< $(CFLAGS)

$(DIR_O_COLLEEN):
		@mkdir -p $(DIR_O_COLLEEN)

$(DIR_O_GRACE)/%.o: $(GRACE_PATH)/%.c
		$(CC) -c -o $@ $< $(CFLAGS)

$(DIR_O_GRACE):
		@mkdir -p $(DIR_O_GRACE)

$(DIR_O_SULLY)/%.o: $(SULLY_PATH)/%.c
		$(CC) -c -o $@ $< $(CFLAGS)

$(DIR_O_SULLY):
		@mkdir -p $(DIR_O_SULLY)


$(COLLEEN):	$(DIR_O_COLLEEN) $(DIR_PRE_COLLEEN) Makefile
				$(CC) $(CFLAGS) -o $(COLLEEN) $(DIR_PRE_COLLEEN)

$(GRACE):	$(DIR_O_GRACE) $(DIR_PRE_GRACE) Makefile
				$(CC) $(CFLAGS) -o $(GRACE) $(DIR_PRE_GRACE)

$(SULLY):	$(DIR_O_SULLY) $(DIR_PRE_SULLY) Makefile
				$(CC) $(CFLAGS) -o $(SULLY) $(DIR_PRE_SULLY)

tests:
			@echo 'start Colleen test file'
			@cd Colleen && sh test.sh
			@echo 'start Grace test file'
			@cd Grace && sh test.sh
			@echo 'start Sully test file'
			@cd Sully && sh test.sh

clean:
			@rm -rf $(DIR_O)

fclean:	clean
			@$(RM) $(COLLEEN) $(GRACE) $(SULLY)

re:	fclean all

.PHONY:	all clean fclean re
