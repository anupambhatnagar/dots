Plug 'vim-airline/vim-airline'

let g:airline_theme='powerlineish'

if !exists('g:airline_symbols')
    let g:airline_symbols = {}
endif

" powerline symbols
"let g:airline_left_sep = ''
"let g:airline_left_alt_sep = ''
"let g:airline_right_sep = ''
"let g:airline_right_alt_sep = ''
let g:airline_symbols.branch = ''
"let g:airline_symbols.colnr = ' :'
"let g:airline_symbols.readonly = ''
"let g:airline_symbols.linenr = ' :'
"let g:airline_symbols.maxlinenr = '☰ '
let g:airline_symbols.dirty='⚡'

" enable powerline fonts
"let g:airline_powerline_fonts=1
" enable tabline
let g:airline#extensions#tabline#enabled=1
" filename only in tabline
let g:airline#extensions#tabline#fnamemod = ':t'
let g:airline#extensions#branch#enabled=1 " show branch
let g:airline_section_y = ' %p%%'
let g:airline_section_z = ' %l:%c' " modify section Z

