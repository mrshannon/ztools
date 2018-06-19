PREFIX = /usr/local

BINPROGS = zfs-snapshot

BASH = bash

all: $(BINPROGS)

install: all
	install -dm755 $(DESTDIR)$(PREFIX)/bin
	install -m755 $(BINPROGS) $(DESTDIR)$(PREFIX)/bin

uninstall:
	for f in $(BINPROGS); do $(RM) $(DESTDIR)$(PREFIX)/bin/$$f; done

.PHONY: all install uninstall
