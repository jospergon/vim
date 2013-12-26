set nocompatible              " be iMproved
filetype off                  " required!

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" let Vundle manage Vundle
" required! 
Bundle 'gmarik/vundle'

Bundle 'L9'
Bundle 'FuzzyFinder'
Bundle 'tpope/vim-fugitive'
Bundle 'scrooloose/nerdtree'
Bundle 'scrooloose/nerdcommenter'
Bundle 'snipMate'
Bundle 'AutoComplPop'
Bundle 'tpope/vim-haml'
Bundle 'tpope/vim-rails'
Bundle 'vim-less'
Bundle 'taglist.vim'

filetype plugin indent on     " required!

" Muestra los números de línea
set number

" Atajos para pestañas como los de Firefox/Chrome/Opera/etc
" " Control T nueva pestaña (la cerramos con :q)
map <c-t> <esc>:tabnew<cr>

" Control PageUp/PageDown cambiar de pestaña
" map <c-pageup> :tabp<cr>
map <c-pagedown> :tabn<cr>

" Colores que no te dejan ciego (al gusto del consumidor, se puede escribir
" " :color e ir dando a tab para ver las combinaciones existentes, hay más en
" " vim.org)
colors desert

" Plugin taglist
" " F5 muestra el frame de tags
map <f5> :TlistToggle<cr>

" Plugin taglist
" " F5 muestra el frame de tags
map <f5> :TlistToggle<cr>

" Poner el frame en la derecha que el Project ya lo pone a la izquierda
let Tlist_Use_Right_Window = 1

" Tamaño mínimo de frame de tags
let Tlist_WinWidth = 40

" Buffer explorer con F4
map <f4> \be

" " switch to previous/next buffer
nnoremap <C-p> :BufSurfBack<CR>
nnoremap <C-n> :BufSurfForward<CR>

" tamaño (en espacios) de los tabuladores
set expandtab
set tabstop=2
set sw=2

" display the following nonprintable characters
set listchars=tab:>\ ,trail:.,precedes:<,extends:>
set list

" set default-encoding to utf-8
set encoding=utf-8

" Influences the working of <BS>, <Del>, CTRL-W and CTRL-U in Insert mode.
set backspace=2

" resaltar todos los resultados de la busqueda
set hlsearch

" autocompletar comandos
set wildmode=list:longest,full

" mark 80 and 120 characters
set colorcolumn=80,120

" tidy
:vmap ,x :!tidy -q -i --show-errors 0<CR>

" To highlight current line
set cursorline

" Map FufFileCoverageFile
nmap ,t :FufCoverageFile<CR>

" Map FufBuffer
nmap ,b :FufBuffer<CR>

" Show NERDTree
map <F6> :NERDTreeToggle<cr>
