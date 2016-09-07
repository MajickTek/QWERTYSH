PREFIX = /usr/local

build:
	gcc main.c -o qwertysh
.PHONY: install
install: build qwertysh
	mkdir -p $(DESTDIR)$(PREFIX)/bin
	cp $< $(DESTDIR)$(PREFIX)/bin/qwertysh
.PHONY: uninstall
uninstall:
	rm -rf $(DESTDIR)$(PREFIX)/bin/qwertysh
clean:
	rm qwertysh
all: install

