syntax on		" enable syntax highlighting
set cursorline		" highlight current line
set ruler		" show number line in bar
set nobackup		" disable backups, use Git
set autoread		" watch for file changes
set number		" show line numbers
set showmode		" show INSERT, VISUAL< etc
set showmatch		" show matching brackets
set autoindent smartindent	" auto/smart indent
set smarttab		" better backspace and tab
set scrolloff=5		" show at least 5 lines above/below
filetype on		" enable filetype detection
filetype indent on	" filetype specific indent
filetype plugin on	" enable filetype specific plugins
"colorscheme solarized
let &colorcolumn=join(range(81,999),",")
highlight ColorColumn ctermbg=235 guibg=#001D2F

set autoindent		" auto indenting
set smartindent		" smart indenting
set expandtab		" convert tabs to spaces
set tabstop=4		" 4 spaces for tabs
set shiftwidth=4	" 4 spaces for indents
set noerrorbells	" turn off error bells
set visualbell		" turn on visual bell

" remapped keys
inoremap {	{}>Left>
inoremap {<CR>	{<CR>}<esc>O
inoremap {{	{
inoremap {}	{}
