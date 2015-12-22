call plug#begin('~/.vim/plugged')
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'vim-javascript'
Plug 'scrooloose/syntastic'
call plug#end()

set t_Co=256
syntax on
set background=dark
colorscheme distinguished

filetype plugin indent on

autocmd Filetype javascript setlocal ts=2 sts=2 sw=2

"NERDTree
map <C-n> :NERDTreeToggle<CR>

"Syntastic
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_javascript_checkers = ['eslint']
let g:syntastic_javascript_eslint_exec = 'eslint_d'

