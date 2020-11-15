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

" Window
set splitbelow
set splitright

" Status-line
set statusline=
set statusline+=\ %M
set statusline+=\ %r
set statusline+=\ %y
set statusline+=\ %F
set statusline+=%=
set statusline+=\ %c
set statusline+=\ %l/%L
set statusline+=\ %p%%
set statusline+=\ [%n]

" Key-bindings
let mapleader=" "

nnoremap <leader>e   :vsplit ~/.config/nvim/init.vim<CR>
nnoremap <leader>s   :source ~/.config/nvim/init.vim<CR>

nnoremap <leader>h   <C-W>h
nnoremap <leader>j   <C-W>j
nnoremap <leader>k   <C-W>k
nnoremap <leader>l   <C-W>l

nnoremap <Up>        :resize +2<CR>
nnoremap <Down>      :resize -2<CR>
nnoremap <Left>      :vertical resize -2<CR>
nnoremap <Right>     :vertical resize +2<CR>
