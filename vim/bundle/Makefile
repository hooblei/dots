
PLUGINS := \
	airblade/vim-gitgutter \
	bling/vim-airline \
	bling/vim-bufferline \
	fatih/vim-go \
	groenewege/vim-less \
	jimenezrick/vimerl \
	kennethzfeng/vim-raml \
	Raimondi/delimitMate \
	rstacruz/sparkup \
	scrooloose/syntastic \
	Shougo/neocomplete.vim \
	Shougo/unite.vim \
	sjl/tslime.vim \
	tommcdo/vim-exchange \
	tpope/vim-commentary \
	tpope/vim-markdown \
	tpope/vim-repeat \
	tpope/vim-surround \
	vim-scripts/bufkill.vim \
	# ---
	# Lokaltog/vim-easymotion
	# tpope/vim-fugitive
	# jnwhiteh/vim-golang
	# mileszs/ack.vim
	# zah/nimrod.vim
	# hylang/vim-hy
	# mattn/emmet-vim
	# wlangstroth/vim-racket
	# mako.vim
	# pydoc.vim
	# leafgarland/typescript-vim
	# Shutnik/jshint2.vim

all: setup

setup: | $(PLUGINS)
	vim +call "+pathogen#helptags()" +qa

%:
	[ -d $(notdir $@) ] || git clone git://github.com/$@

update:
	for p in $(PLUGINS); do \
		pushd "$$(basename $${p})" \
		&& git pull \
		&& popd; \
	done
	vim +call "+pathogen#helptags()" +qa

clean:
	rm -rf $(notdir $(PLUGINS))

.PHONY: all setup clean

