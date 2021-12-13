#These are two variables
CC = gcc
OBJS = main.o salida.o calculadora.o
BINARY = programa
CFLAGS = -g -Wall
LDFLAGS = -l. 

# This rule compiles the principal program.
all: $(BINARY)

programa: $(OBJS)
	$(CC) -o $@ $(OBJS)

%.o: %.c
	$(CC) $(CFLAGS) -c $< -o $@

# This is a phony rule
.PHONY: clean # This way make will run as expected even if you have a file named clean.
clean: 
	rm -f $(BINARY) $(OBJS)
