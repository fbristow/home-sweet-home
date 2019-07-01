execute pathogen#infect()

filetype plugin indent on
syntax on

" config table mode so it plays nicely with pandoc

let g:table_mode_corner_corner='+'
let g:table_mode_align_char=':'
let g:table_mode_header_fillchar='='

" quit beeping! flash at me if you have a problem

set visualbell
set noerrorbells

set expandtab
set tabstop=4
set shiftwidth=4

au FileType markdown set textwidth=80
au FileType markdown set spell spelllang=en_ca
