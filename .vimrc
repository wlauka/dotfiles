set nocompatible
filetype off

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

set t_Co=256                                " enable 256 color mode
set background=dark
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
hi statusline ctermfg=60 ctermbg=15
set statusline=%f                           " file name
set statusline+=%h                          "help file flag
set statusline+=%m                          "modified flag
set statusline+=%r                          "read only flag
set statusline+=%{fugitive#statusline()}
set statusline+=\ %=                        " align left
set statusline+=Line:%l/%L[%p%%]            " line X of Y [percent of file]
set statusline+=\ Col:%c                    " current column
set statusline+=\ Buf:%n                    " Buffer number
set statusline+=\ [%b][0x%B]\               " ASCII and byte code under cursor

