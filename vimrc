set nocompatible
set filetype=c
set fileformats=unix,dos,mac
set viminfo=
set shell=bash
set termencoding=utf-8
set fileencoding=utf-8

syntax on
set background=dark
set cmdheight=1
set showcmd
set number
set ruler
set cursorline
set noerrorbells
set visualbell
set nowrap
set wildmenu
set wildmode=list:full
set hlsearch
set incsearch
set matchtime=5
set ignorecase
set smartcase
set completeopt=menu,longest,preview
set backspace=2
set showmatch
set more
set autoread
set ttyfast
set autoindent
set smartindent
set expandtab
set shiftwidth=4
set softtabstop=4

autocmd FileType make set noexpandtab shiftwidth=8 softtabstop=0
autocmd BufEnter * set mouse=
