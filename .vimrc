colorscheme elflord
syntax on
set nocompatible
set number
set ruler
set cursorline
set hlsearch
set expandtab
set tabstop=4
set softtabstop=4
set backspace=indent,eol,start
   
highlight RedundantSpaces ctermbg=red guibg=red
match RedundantSpaces /\s\+$\| \+\ze\t\|\t/

