#These are two variables
CC = gcc
OBJS = main.o salida.o calculadora.o
BINARY = programa
CFLAGS = -g -Wall
LDFLAGS = -l. 

# This rule compiles the principal program.
all: $(BINARY)

programa: $(OBJS)
	$(CC) -o programa $(OBJS)

#this is an unspoken rule
main.o: main.c funciones.h

salida.o: salida.c funciones.h

calculadora.o: calculadora.c funciones.h

# This is a phony rule
clean: 
	rm -f $(BINARY) $(OBJS)
