set nocompatible
filetype off

" ----------------- Vundle

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'gmarik/Vundle.vim'		    " main vundle package
Plugin 'bling/vim-airline'          " improved status bar
Plugin 'bling/vim-bufferline'       " show buffers in the status bar
Plugin 'chriskempson/base16-vim'    " base16 color set

call vundle#end()
filetype plugin indent on

" ----------------- Main

syntax on
set shiftwidth=4
set tabstop=4
set expandtab

set showmode

set ruler						    " show line numbers on the bar
set autoread					    " watch for file changes
set number						    " line numbers
set autoindent smartindent		    " auto/smart indent
set lazyredraw
set history=200
set backspace=indent,eol,start
set ffs=unix,mac,dos
set paste                           " turn on OS pasting by default

set ignorecase					    " ignore case in search
set hlsearch					    " highlight search results
set showmatch					    " show matching brackets

set t_Co=256                        " enable 256 color mode
set background=dark
colorscheme base16-ocean
set encoding=utf8

set novisualbell
set noerrorbells

set nobackup
set nowb
set noswapfile

" ----------------- Mappings

map <space> /
map <c-space> ?


