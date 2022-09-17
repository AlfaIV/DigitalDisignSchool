set number

"set expandtab
"set tabstop=4

syntax on

set hlsearch
set incsearch


"vim-plg

"vimawesome

call plug#begin()

Plug 'scrooloose/nerdtree',{ 'on' : 'NERDTreeToggle' }
map <s-n> :NERDTreeToggle<cr>


Plug 'vhda/verilog_systemverilog.vim'
set foldmethod=syntax

call plug#end()





