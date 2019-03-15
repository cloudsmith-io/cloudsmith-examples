prefix = /usr/local
bindir = $(prefix)/bin
sharedir = $(prefix)/share

CFLAGS = --std=c99

all: cloudsmith-redhat-example

cloudsmith-redhat-example: example.o
	gcc -g example.o -o cloudsmith-redhat-example

example.o: example.c
	gcc -g -c example.c

clean:
	rm -f cloudsmith-redhat-example *.o

install: all
	install cloudsmith-redhat-example $(DESTDIR)$(bindir)
