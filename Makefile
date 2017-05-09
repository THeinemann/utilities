

.PHONY: all install


files=focus-or-start

prefix=/usr/local

all:
	@echo Nothing to do for make all.
	@echo If you want to install the scripts to your machine, call make install.

install: $(files)
	install -m 0755 $^ $(prefix)/bin
