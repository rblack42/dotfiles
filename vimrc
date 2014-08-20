set nocompatible
filetype off

scriptencoding utf-8
set encoding=utf-8

syntax enable               " Turn on syntax highlighting
filetype plugin indent on   " Turn on filetype detection

set ignorecase              " Case-insensitive searching.
set smartcase               " But case sensitive if expression contains a capital letter.

set number                  " Show line numbers
set ruler                   " Show cursor position

set wrap                    " Turn on line wrapping

set nobackup                " No backup files (use git)
set nowritebackup
set noswapfile

set expandtab
set autoindent
set smartindent

autocmd FileType * set tabstop=4
autocmd FileType * set softtabstop=4
autocmd FileType * set shiftwidth=4

" Highlight trailing whitespace and long lines
highlight ExtraWhitespace ctermbg=red guibg=red
match ExtraWhitespace /\s\+$/

" paragraph reformatting
map q gq}
