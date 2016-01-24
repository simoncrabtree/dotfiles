call plug#begin('~/.vim/plugged')
Plug 'mhartington/oceanic-next'
Plug 'SirVer/ultisnips' | Plug 'honza/vim-snippets'
Plug 'benekastah/neomake'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'vim-airline/vim-airline'
Plug 'scrooloose/nerdtree', { 'on': ['NERDTreeToggle', 'NERDTreeFind'] } | Plug 'Xuyuanp/nerdtree-git-plugin' | Plug 'ryanoasis/vim-devicons'
Plug 'tpope/vim-commentary'
Plug 'atweiden/vim-dragvisuals'
Plug 'terryma/vim-multiple-cursors'
call plug#end()

syntax enable

colorscheme OceanicNext
set background=dark

"Indent using spaces
set tabstop=2
set shiftwidth=2
set expandtab

"Neomake
let g:neomake_open_list = 2
autocmd! BufWritePost * Neomake

function! neomake#makers#ft#javascript#eslint()
    return {
        \ 'args': ['-f', 'compact'],
        \ 'errorformat': '%E%f: line %l\, col %c\, Error - %m,' .
        \ '%W%f: line %l\, col %c\, Warning - %m'
        \ }
endfunction
let g:neomake_javascript_enabled_makers = ['eslint']
autocmd! BufWritePost * Neomake

"Show line numbers
set number
set cursorline

"Autocomplete on ctrl-space
inoremap <Nul> <C-x><C-o>

"jj mapped to esc
:imap jj <Esc>

"Fuzzy Finder mapped to ctrl-p
map <c-p> :FZF<CR>

"NERDTree on Ctrl-K Ctrl-B (like Sublime)
map <c-k><c-b> :NERDTreeToggle<CR>
" close NERDTree after a file is opened
let g:NERDTreeQuitOnOpen=1
" show hidden files in NERDTree
let NERDTreeShowHidden=1

" vim-airline ---------------------------------------------------------------{{{
  let g:airline#extensions#tabline#enabled = 1
  set hidden
  let g:airline#extensions#tabline#fnamemod = ':t'
  let g:airline#extensions#tabline#show_tab_nr = 1
  let g:airline_powerline_fonts = 1
  let g:airline_theme='oceanicnext'
  cnoreabbrev <expr> x getcmdtype() == ":" && getcmdline() == 'x' ? 'Sayonara' : 'x'
  tmap <leader>x <c-\><c-n>:bp! <BAR> bd! #<CR>
  nmap <leader>t :term<cr>
  nmap <leader>, :bnext<CR>
  tmap <leader>, <C-\><C-n>:bnext<cr>
  nmap <leader>. :bprevious<CR>
  tmap <leader>. <C-\><C-n>:bprevious<CR>
  let g:airline#extensions#tabline#buffer_idx_mode = 1
  tmap <leader>1  <C-\><C-n><Plug>AirlineSelectTab1
  tmap <leader>2  <C-\><C-n><Plug>AirlineSelectTab2
  tmap <leader>3  <C-\><C-n><Plug>AirlineSelectTab3
  tmap <leader>4  <C-\><C-n><Plug>AirlineSelectTab4
  tmap <leader>5  <C-\><C-n><Plug>AirlineSelectTab5
  tmap <leader>6  <C-\><C-n><Plug>AirlineSelectTab6
  tmap <leader>7  <C-\><C-n><Plug>AirlineSelectTab7
  tmap <leader>8  <C-\><C-n><Plug>AirlineSelectTab8
  tmap <leader>9  <C-\><C-n><Plug>AirlineSelectTab9
  nmap <leader>1 <Plug>AirlineSelectTab1
  nmap <leader>2 <Plug>AirlineSelectTab2
  nmap <leader>3 <Plug>AirlineSelectTab3
  nmap <leader>4 <Plug>AirlineSelectTab4
  nmap <leader>5 <Plug>AirlineSelectTab5
  nmap <leader>6 <Plug>AirlineSelectTab6
  nmap <leader>7 <Plug>AirlineSelectTab7
  nmap <leader>8 <Plug>AirlineSelectTab8
  nmap <leader>9 <Plug>AirlineSelectTab9
"}}}

"Nice cursoor in insert mode
:let $NVIM_TUI_ENABLE_CURSOR_SHAPE=1

vmap  <expr>  <S-LEFT>   DVB_Drag('left')                     
vmap  <expr>  <S-RIGHT>  DVB_Drag('right')                    
vmap  <expr>  <S-DOWN>   DVB_Drag('down')                     
vmap  <expr>  <S-UP>     DVB_Drag('up')                       
vmap  <expr>  D        DVB_Duplicate()                      
