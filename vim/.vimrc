" Pathogen load 
filetype off 
call pathogen#infect() 
call pathogen#helptags()

set nocompatible
colorscheme gummybears
syntax on
filetype on
filetype plugin on
filetype indent on
set nowrap
set nohlsearch

" Python indention
au FileType python setl tabstop=4 expandtab shiftwidth=4 softtabstop=4

map <F3> :TlistToggle
let Tlist_Use_Right_Window = 1
map <F2> :NERDTreeToggle

" Maps Alt-[h,j,k,l] to resizing a window split
if bufwinnr(1)
  map <C-A>k <C-W>+
  map <C-A>j <C-W>-
  map <C-A>h <c-w><
  map <C-A>l <c-w>>
endif

" Rope refactoring library.  Used by python-mode
let g:pymode_rope_always_show_complete_menu = 0
