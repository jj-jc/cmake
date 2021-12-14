#These are variables
CC = gcc
SRCS = main.c salida.c calculadora.c  
OBJS = main.o salida.o calculadora.o
BINARY = programa
CFLAGS = -g -Wall
LDFLAGS = -l. 

# Variables that are a good practise to mantein: 
# Default value of build to debug if it is not defined before (executed from eclipse for instance) 
BUILD_CONFIGURATION ?= Debug 
#Dynamically retrieves the name of the submodule (directory name)
MODULE_NAME := $(shell basename $(PWD))

# This rule compiles the principal program.
all: $(BINARY)

programa: $(OBJS)
	$(CC) -o $@ $(OBJS)

%.o: %.c
	$(CC) $(CFLAGS) -c $< -o $@


# Shows the diferent Directives
$(OBJS): $(SRCS)
	@echo $@
# @echo $%
	@echo $^
	@echo $<
	@echo $(@D) 
	@echo $(@F)
	@echo $*
	@echo $+
	@echo $?
	@echo --------------------------

# This is a phony rule
.PHONY: clean # This way make will run as expected even if you have a file named clean.
clean: 
	rm -f $(BINARY) $(OBJS)
