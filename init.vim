call plug#begin('~/.vim/plugged')
Plug 'mhartington/oceanic-next'
Plug 'SirVer/ultisnips' | Plug 'honza/vim-snippets'
call plug#end()

syntax enable

colorscheme OceanicNext
set background=dark

"Indent using spaces
set tabstop=2
set shiftwidth=2
set expandtab