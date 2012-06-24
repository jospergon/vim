filetype plugin on

" F2 = OmniComplete
imap <f2> <c-x><c-o>

" Configuración del autocompletado inteligente (el de Python necesita un Vim
" compilado contra las librerías de Python para funcionar)
autocmd FileType python set omnifunc=pythoncomplete#Complete
autocmd FileType javascript set omnifunc=javascriptcomplete#CompleteJS
autocmd FileType html set omnifunc=htmlcomplete#CompleteTags
autocmd FileType css set omnifunc=csscomplete#CompleteCSS
"ruby
autocmd FileType ruby,eruby set omnifunc=rubycomplete#Complete
autocmd FileType ruby,eruby let g:rubycomplete_buffer_loading = 1
autocmd FileType ruby,eruby let g:rubycomplete_rails = 1
autocmd FileType ruby,eruby let g:rubycomplete_classes_in_global = 1
"improve autocomplete menu color
highlight Pmenu ctermbg=238 gui=bold

" Muestra los números de línea
set number

" Atajos para pestañas como los de Firefox/Chrome/Opera/etc
" Control T nueva pestaña (la cerramos con :q)
map <c-t> <esc>:tabnew<cr>

" Control PageUp/PageDown cambiar de pestaña
map <c-pageup> :tabp<cr>
map <c-pagedown> :tabn<cr>

" F10 activa modo pegar (no autoindenta, no descoloca lo que pegamos), F11
" lo desactiva
map <f10> :set paste<cr>
map <f11> :set nopaste<cr>

" Colores que no te dejan ciego (al gusto del consumidor, se puede escribir
" :color e ir dando a tab para ver las combinaciones existentes, hay más en
" vim.org)
colors desert

" Que no haga la ventana de gvim demasiado pequeña
au GUIEnter * set lines=80 columns=160

" Plugin taglist
" F5 muestra el frame de tags
map <f5> :TlistToggle<cr>

" Poner el frame en la derecha que el Project ya lo pone a la izquierda
let Tlist_Use_Right_Window = 1

" Tamaño mínimo de frame de tags
let Tlist_WinWidth = 40

" Buffer explorer con F4
map <f4> \be

" switch to previous/next buffer
nnoremap <C-p> :BufSurfBack<CR>
nnoremap <C-n> :BufSurfForward<CR>

" create tags file in current working directory
command! MakeTags :silent !ctags -R *

" tamaño (en espacios) de los tabuladores
set tabstop=2
set sw=2

" display the following nonprintable characters
set listchars=tab:>\ ,trail:.,precedes:<,extends:>
set list

" set default-encoding to utf-8
set encoding=utf-8

" Influences the working of <BS>, <Del>, CTRL-W and CTRL-U in Insert mode.
set backspace=2

" color para resaltar la sintaxis
syntax on

" resaltar todos los resultados de la busqueda
set hlsearch

" autocompletar comandos
set wildmode=list:longest,full

" mark 80 and 120 characters
set colorcolumn=80,120

" tidy
:vmap ,x :!tidy -q -i --show-errors 0<CR>

" Configure coffescript Syntax Highlighting
" hi link coffeeSpaceError NONE
hi link coffeeSpaceError NONE
" Trailing semicolons are also considered an error (for help transitioning from JavaScript.) 
" This can be disabled with:
hi link coffeeSemicolonError NONE
" To fold by indentation in CoffeeScript files
au BufNewFile,BufReadPost *.coffee setl foldmethod=indent nofoldenable
" To get standard two-space indentation in CoffeeScript files
au BufNewFile,BufReadPost *.coffee setl shiftwidth=2 expandtab
