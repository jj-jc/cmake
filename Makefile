#These are two variables
OBJS = main.o salida.o calculadora.o
BINARY = programa
CFLAGS = -g -Wall
LDFLAGS = -l. 

x = Hello
y = $(x) Adios #recursive variable
y2 := $(x) Adios #Simple variable
x = Adios
# This rule compiles the principal program.
all: $(BINARY)

programa: $(OBJS)
	gcc -o programa $(OBJS)

main.o: main.c funciones.h
	gcc $(CFLAGS) -c main.c

salida.o: salida.c funciones.h
	gcc $(CFLAGS) -c salida.c

calculadora.o: calculadora.c funciones.h
	gcc $(CFLAGS) -c calculadora.c 

# This is a phony rule
clean: 
	rm -f $(BINARY) $(OBJS)

print:
	@echo $(x)
#takes the value of the y right now
	echo $(y) 
	echo $(y2)