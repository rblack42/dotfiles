set nocompatible
filetype plugin indent off

" Vundle config
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#rc()

Bundle 'gmarik/vundle'
Bundle 'altercation/vim-colors-solarized'
Bundle 'scrooloose/nerdtree'

filetype plugin indent on   " Turn on filetype detection
"------------------------------------------------------------------------
map <C-n> :NERDTreeToggle<CR>

"------------------------------------------------------------------------
syntax enable               " Turn on syntax highlighting
set background=light
colorscheme solarized
"------------------------------------------------------------------------
scriptencoding utf-8
set encoding=utf-8


" Searching controls -----------------------------------------------------
set ignorecase              " Case-insensitive searching.
set smartcase               " But case sensitive if exp contains a caps

" Status line setup ------------------------------------------------------
set number                  " Show line numbers
set ruler                   " Show cursor position

set wrap                    " Turn on line wrapping

" Backup control ---------------------------------------------------------
set nobackup                " No backup files (use git)
set nowritebackup           " controls how vim does backups
set noswapfile              " Do not use swap files

" Tab and indent controls ------------------------------------------------
set expandtab
set autoindent
set smartindent

set tabstop=4
set softtabstop=4
set shiftwidth=4

" Whitespace at end of line controls -------------------------------------
" Highlight trailing whitespace and long lines
highlight ExtraWhitespace ctermbg=red guibg=red
match ExtraWhitespace /\s\+$/

" paragraph reformatting
map q gq}
