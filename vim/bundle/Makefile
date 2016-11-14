
PLUGINS := \
	airblade/vim-gitgutter \
	bling/vim-bufferline \
	digitaltoad/vim-jade \
	fatih/vim-go \
	Glench/Vim-Jinja2-Syntax \
	groenewege/vim-less \
	hylang/vim-hy \
	jceb/vim-orgmode \
	jimenezrick/vimerl \
	jmcantrell/vim-virtualenv \
	krisajenkins/vim-pipe \
	krisajenkins/vim-postgresql-syntax \
	leafgarland/typescript-vim \
	mustache/vim-mustache-handlebars \
	othree/html5.vim \
	pangloss/vim-javascript \
	posva/vim-vue \
	qpkorr/vim-bufkill \
	Raimondi/delimitMate \
	rstacruz/sparkup \
	scrooloose/syntastic \
	Shougo/neocomplete.vim \
	Shougo/unite.vim \
	sjl/tslime.vim \
	sophacles/vim-bundle-mako \
	tommcdo/vim-exchange \
	tpope/vim-commentary \
	tpope/vim-markdown \
	tpope/vim-repeat \
	tpope/vim-speeddating \
	tpope/vim-surround \
	tristen/vim-sparkup \
	vim-scripts/dbext.vim \
	# ---
	# lambdalisue/vim-pyenv \
	# mxw/vim-jsx \
	# Lokaltog/vim-easymotion
	# tpope/vim-fugitive
	# jnwhiteh/vim-golang
	# mileszs/ack.vim
	# zah/nimrod.vim
	# hylang/vim-hy
	# mattn/emmet-vim
	# wlangstroth/vim-racket
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

