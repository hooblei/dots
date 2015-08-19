
PATHOGEN_SRC = https://raw.githubusercontent.com/tpope/vim-pathogen/master/autoload/pathogen.vim
PATHOGEN := autoload/pathogen.vim


all: setup


$(PATHOGEN):
	curl -LSso $@ $(PATHOGEN_SRC)

setup: | $(PATHOGEN)
	make -C bundle setup

update:
	make -C bundle update

clean:
	make -C bundle clean

.PHONY: all setup clean

