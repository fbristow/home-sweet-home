execute pathogen#infect()

filetype plugin indent on
syntax on

" config table mode so it plays nicely with pandoc

let g:table_mode_corner_corner='+'
let g:table_mode_header_fillchar='='

" quit beeping! flash at me if you have a problem

set visualbell
set noerrorbells

set expandtab
set tabstop=4
set shiftwidth=4
set nowrap
set autoindent

au FileType markdown set textwidth=80
au FileType markdown set spell spelllang=en_ca

let g:vimwiki_list = [{'path': '~/Projects/comp-1000',
                      \ 'syntax': 'markdown', 'ext': '.md'}]

au FileType vimwiki,markdown hi courseRef ctermfg=yellow
au FileType vimwiki,markdown syn match courseRef /&\d*&/
