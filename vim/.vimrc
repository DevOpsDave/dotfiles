" Pathogen load
filetype off

call pathogen#infect()
call pathogen#helptags()


let g:pymode_folding = 1
filetype on
filetype plugin on
filetype indent on
syntax on
colorscheme vividchalk
set nowrap

" Python syntax highlighting.
" autocmd FileType python set complete+=k~/.vim/syntax/python.vim isk+=.,
" Python py-flakes.
" let g:pyflakes_use_quickfix = 0

