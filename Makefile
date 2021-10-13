# This rule compiles the principal program.
all: programa

programa: main.o salida.o calculadora.o
	gcc -o programa main.o salida.o calculadora.o

main.o: main.c funciones.h
	gcc -c main.c

salida.o: salida.c funciones.h
	gcc -c salida.c

calculadora.o: calculadora.c funciones.h
	gcc -c calculadora.c 

# This is a phony rule
clean: 
	rm -f programa *.o