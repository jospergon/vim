set nocompatible              " be iMproved
filetype off                  " required!

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle
" required! 
Bundle 'gmarik/vundle'

Bundle 'tpope/vim-fugitive'
Bundle 'scrooloose/nerdtree'
Plugin 'tpope/vim-commentary'
Bundle 'AutoComplPop'
Bundle 'tpope/vim-haml'
Bundle 'tpope/vim-rails'
Bundle 'vim-less'
Bundle 'kchmck/vim-coffee-script'
Bundle 'tpope/vim-surround'
Bundle 'jiangmiao/auto-pairs'
Bundle 'altercation/vim-colors-solarized'
Bundle 'jpo/vim-railscasts-theme'
Bundle 'bling/vim-airline'
Bundle 'bling/vim-bufferline'
Plugin 'vim-airline/vim-airline-themes'
Bundle 'Lokaltog/powerline-fonts'
Bundle 'tpope/vim-rvm'
Bundle 'vim-ruby/vim-ruby'
Bundle 'jgdavey/tslime.vim'
Plugin 'mileszs/ack.vim'
Plugin 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plugin 'junegunn/fzf.vim'
Plugin 'w0rp/ale'

call vundle#end()

filetype plugin indent on     " required!

" Muestra los números de línea
set number

autocmd BufNewFile,BufRead Gemfile set filetype=ruby

let mapleader = ','

" Atajos para pestañas como los de Firefox/Chrome/Opera/etc
" " Control T nueva pestaña (la cerramos con :q)
map <c-t> <esc>:tabnew<cr>

" Control PageUp/PageDown cambiar de pestaña
" map <c-pageup> :tabp<cr>
map <c-pagedown> :tabn<cr>

" Colores que no te dejan ciego (al gusto del consumidor, se puede escribir
" " :color e ir dando a tab para ver las combinaciones existentes, hay más en
" " vim.org)
syntax enable
if !has('gui_running')
  let g:solarized_termcolors=256
endif
set background=light
let g:solarized_visibility = "high"
let g:solarized_contrast = "high"
colorscheme solarized

" Buffer explorer con F4
map <f4> \be

" " switch to previous/next buffer
nnoremap <C-p> :bprevious<CR>
nnoremap <C-n> :bnext<CR>

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

" Map FufFile
nmap <Leader>f :FufFile<CR>

" Map FufBuffer
nmap <Leader>b :FufBuffer<CR>

" Show NERDTree
map <F6> :NERDTreeToggle<cr>

set laststatus=2
let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts = 1
let g:airline_theme='molokai'

nnoremap <F2> :set invpaste paste?<CR>
set pastetoggle=<F2>
set showmode

nmap <Leader>t :FZF<CR>
