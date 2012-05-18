" Pathogen load
filetype off

call pathogen#infect()
call pathogen#helptags()

set nocompatible
syntax on
filetype on
filetype plugin on
filetype indent on
colorscheme vividchalk
set nowrap

map <F3> :TlistToggle
let Tlist_Use_Right_Window = 1
map <F2> :NERDTreeToggle
