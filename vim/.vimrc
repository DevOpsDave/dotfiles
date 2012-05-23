" Pathogen load filetype off call pathogen#infect() call pathogen#helptags()

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

" Maps Alt-[h,j,k,l] to resizing a window split
if bufwinnr(1)
  map <S-k> <C-W>+
  map <S-j> <C-W>-
  map <S-h> <c-w><
  map <S-l> <c-w>>
endif
