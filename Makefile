PREFIX = /usr/local

build:
	gcc main.c -o build
.PHONY: install
install: build
	mkdir -p $(PREFIX)/bin
	cp $< $(PREFIX)/bin/qwertysh
	mv /usr/local/bin/build /usr/local/build/qwertysh
.PHONY: uninstall
uninstall:
	rm -rf $(PREFIX)/bin/qwertysh
clean:
	rm qwertysh
all: install

