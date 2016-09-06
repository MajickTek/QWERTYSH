PREFIX = /usr/local

.PHONY: install
install: build
	mkdir -p $(DESTDIR)$(PREFIX)/bin
	cp $< $(DESTDIR)$(PREFIX)/bin/qwertysh
.PHONY: uninstall
uninstall:
	rm -rf $(DESTDIR)$(PREFIX)/bin/qwertysh
build:
	gcc main.c -o qwertysh
clean:
	rm qwertysh
all: install

