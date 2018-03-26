prefix = /usr/local
bindir = $(prefix)/bin
sharedir = $(prefix)/share
mandir = $(sharedir)/man
man1dir = $(mandir)/man1

CFLAGS = --std=c99

all:autility

clean:
	rm -f autility autility.o

install: all
	install autility $(DESTDIR)$(bindir)
	install -m 0644 autility.1 $(DESTDIR)$(man1dir)
