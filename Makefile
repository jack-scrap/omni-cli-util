PREFIX:=/usr/local
BINDIR:=$(PREFIX)/bin

.PHONY: install
install:
	sudo cp *.sh $(BINDIR)
