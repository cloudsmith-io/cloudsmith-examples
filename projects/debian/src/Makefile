prefix = /usr/local
bindir = $(prefix)/bin
sharedir = $(prefix)/share

CFLAGS = --std=c99

all: csm-debian-example

csm-debian-example: example.o
    gcc -g example.o -o csm-debian-example

example.o: example.c
    gcc -g -c example.c

clean:
    rm -f csm-debian-example *.o

install: all
    install cloudsmith-example-debian $(DESTDIR)$(bindir)
