set nocompatible
filetype off

let mapleader=","


" ----------------- Colors
set t_Co=256                                " enable 256 color mode
set background=dark

hi User1 ctermfg=10 ctermbg=6 cterm=bold   
hi User2 ctermfg=15 ctermbg=60
hi User3 ctermfg=235 ctermbg=60
hi clear signColumn                         " set SignColumn to same color as BG

" ----------------- Vundle

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
    
Plugin 'gmarik/Vundle.vim'		            " main vundle package
Plugin 'tpope/vim-fugitive'                 " git status
Plugin 'matchit.zip'                        " enhanced % matching
Plugin 'kshenoy/vim-signature'              " display marks in gutter

Plugin 'pangloss/vim-javascript'            " javascript lang support
Plugin 'hail2u/vim-css3-syntax'             " CSS3 lang support
Plugin 'cakebaker/scss-syntax.vim'          " SCSS lang support

Plugin 'chriskempson/base16-vim'            " base-16 color scheme
Plugin 'altercation/vim-colors-solarized'   " solarized color scheme
Plugin 'reedes/vim-colors-pencil'           " iaWriter inspired color scheme

call vundle#end()
filetype plugin indent on


" ----------------- Main

syntax on
set shiftwidth=4
set tabstop=4
set expandtab


set showmode
set ruler
set autoread					            " watch for file changes
set number						            " line numbers
set autoindent smartindent		            " auto/smart indent
set lazyredraw
set history=200
set backspace=indent,eol,start
set ffs=unix,mac,dos

set ignorecase					            " ignore case in search
set hlsearch					            " highlight search results
set showmatch					            " show matching brackets
set laststatus=2

set encoding=utf8
set novisualbell
set noerrorbells

set nobackup
set nowb
set noswapfile

" ----------------- Mappings

map <space> /
map <c-space> ?

" ----------------- Status Line
set statusline=%1*\ \ %f\ \ \ %2*                   " file name
set statusline+=\ \ (%{fugitive#head(7)})\ \  
set statusline+=%h                          "help file flag
set statusline+=%m                          "modified flag
set statusline+=%r                          "read only flag
set statusline+=\ %=                        " align left
set statusline+=%3*L%2*\ %l/%L                       " line X of Y [percent of file]
set statusline+=\ \ \ %3*C%2*\ %c                " current column
set statusline+=\ \ \ %3*B%2*\ %n\ \                 " Buffer number
