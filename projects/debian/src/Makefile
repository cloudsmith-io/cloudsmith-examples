prefix = /usr/local
bindir = $(prefix)/bin
sharedir = $(prefix)/share

CFLAGS = --std=c99

all: cloudsmith-debian-example

cloudsmith-debian-example: example.o
	gcc -g example.o -o cloudsmith-debian-example

example.o: example.c
	gcc -g -c example.c

clean:
	rm -f cloudsmith-debian-example *.o

install: all
	install cloudsmith-example-debian $(DESTDIR)$(bindir)
