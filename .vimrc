call plug#begin('~/.vim/plugged')
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'vim-javascript'
Plug 'scrooloose/syntastic'
Plug 'itchyny/lightline.vim'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'atweiden/vim-dragvisuals'
Plug 'christoomey/vim-tmux-navigator'
call plug#end()

"Show line numbers
set number

set t_Co=256
set background=dark
colorscheme distinguished

autocmd Filetype javascript setlocal ts=2 sts=2 sw=2

"NERDTree
map <C-n> :NERDTreeToggle<CR>

"Syntastic
"set statusline=
set statusline+=%#warningmsg#
"set statusline+=%{SyntasticStatuslineFlag()}
"set statusline+=%*
"set statusline+=%3*%y%*
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_enable_signs=1
let g:syntastic_javascript_checkers = ['eslint']
let g:syntastic_javascript_eslint_exec = 'eslint_d'

"Lightline
set laststatus=2
let g:lightline = {
	\ 'colorscheme': 'wombat',
	\ 'active': {
    \   'left': [ [ 'mode', 'paste' ], [ 'fugitive', 'filename' ], ['ctrlpmark'] ],
    \   'right': [ [ 'syntastic', 'lineinfo' ], ['percent'], [ 'fileformat', 'fileencoding', 'filetype' ] ]
    \ },
	\ 'component_expand': {
    \   'syntastic': 'SyntasticStatuslineFlag',
    \ },
    \ 'component_type': {
    \   'syntastic': 'error',
    \ },
\ }


vmap  <expr>  <S-LEFT>   DVB_Drag('left')                     
vmap  <expr>  <S-RIGHT>  DVB_Drag('right')                    
vmap  <expr>  <S-DOWN>   DVB_Drag('down')                     
vmap  <expr>  <S-UP>     DVB_Drag('up')                       
vmap  <expr>  D        DVB_Duplicate()                      

" Remove any introduced trailing whitespace after moving... 
" let g:DVB_TrimWS = 1                                        
"
