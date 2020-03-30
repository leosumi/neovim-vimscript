" init.vim file
" Created by Léo Sumi

" Automatically deletes all trailling whitespace on save
autocmd BufWritePre * %s/\s\+$//e

" Line's number
set number
set relativenumber

" Visually break long lines in an appropriate manner
set linebreak
set breakindent
set showbreak=…
