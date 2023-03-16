SH:=/bin/bash

PREFIX:=/usr/local
BINDIR:=$(PREFIX)/bin

SRCS:=omni_fmt.sh omni_fmt_rec.sh omni_lvl_swp.sh omni_lvl_dec.sh omni_lvl_inc.sh omni_lvl_cnt.sh omni_lvl_fmt.sh omni_alpha_bg.sh

.PHONY: install
install:
	cp $(SRCS) $(BINDIR)

.PHONY: uninstall
uninstall:
	rm $(BINDIR)/$(SRCS)
