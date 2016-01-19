call plug#begin('~/.vim/plugged')
Plug 'mhartington/oceanic-next'
Plug 'SirVer/ultisnips' | Plug 'honza/vim-snippets'
Plug 'benekastah/neomake'
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