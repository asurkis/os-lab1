CC = gcc
CFLAGS = -pedantic-errors -pthread

default: clean build run

clean:
	rm -f *.out

build: lab1.out

run:
	./lab1.out

%.out: %.c
	$(CC) $(CFLAGS) $*.c -o $*.out
