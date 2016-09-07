PREFIX = /usr/local

build:
	gcc main.c -o build
.PHONY: install
install: build
	sudo mkdir -p $(PREFIX)/bin
	sudo cp $< $(PREFIX)/bin/qwertysh
.PHONY: uninstall
uninstall:
	sudo rm -rf $(PREFIX)/bin/qwertysh
clean:
	rm qwertysh
all: install

