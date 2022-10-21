SH:=/bin/bash

PREFIX:=/usr/local
BINDIR:=$(PREFIX)/bin

SRC:=omni_fmt.sh omni_fmt_rec.sh omni_cmp_lvl_spec.sh omni_lvl_swp.sh omni_lvl_dec.sh omni_lvl_inc.sh omni_lvl_cnt.sh omni_alpha_bg.sh

.PHONY: install
install:
	cp $(SRC) $(BINDIR)

.PHONY: uninstall
uninstall:
	rm $(BINDIR)/$(SRC)
