PREFIX:=/usr/local
DESTDIR:=$(PREFIX)/bin

.PHONY: install
install:
	sudo cp *.sh $(DESTDIR)
