set encoding=utf-8                " encoding to use
set number                        " show line numbers
set relativenumber                " show relative line numbers
set showcmd                       " show command in bottom bar
"set cursorline                   " highlight current line
set wildmenu                      " visual autocomplete for command menu
set background=dark               " for dark themes
set tabstop=2                     " number of visual spaces per tab
set shiftwidth=2
set expandtab                     " convert tab to spaces
"set softtabstop=2                " number of spaces in tab when editing
set incsearch                     " search as characters are entered
set nohlsearch                    " highlight matches
set ruler                         " always show current position
set lbr                           " linebreak on 500 characters
set ai                            " auto indent
set si                            " smart indent
set wrap                          " wrap lines
set visualbell                    " no sounds
set showmode                      " show current mode at the bottom
set ignorecase                    " ignore case while searching
set mouse=a                       " enable mouse
set clipboard=unnamedplus         " clipboard to use
set backspace=indent,eol,start    " backspace over mentioned items
set hidden                        " buffer unloaded when abandoned
set nobackup                      " no backup from coc
set nowritebackup                 " no backup from coc
set cmdheight=2                   " more space for displaying messages
set updatetime=200                " shorter updatetime (default 4000 ms$)
set shortmess+=c                  " do not pass messages to |ins-completion-menu|.
set signcolumn=auto:2             " sign column width for git diff markers
"set autochdir                    " auto change dir on opening files, switching buffers etc.
set termguicolors                 " enables 24 bit rgb color in TUI
"set colorcolumn=100              " shows a vertical line at specified column
colorscheme molokai               " theme name
syntax on                         " use syntax highlighting
filetype plugin on                " enable the plugin to detect filetype


" disable arrow keys
nnoremap <Left> <Nop>
nnoremap <Down> <Nop>
nnoremap <Up> <Nop>
nnoremap <Right> <Nop>

" remap movement to display lines instead of real lines
nnoremap <silent> j gj
nnoremap <silent> k gk
nnoremap <silent> 0 g0
nnoremap <silent> $ g$

" move to adjacent buffer
noremap <c-h> <c-w>h
noremap <c-j> <c-w>j
noremap <c-k> <c-w>k
noremap <c-l> <c-w>l

" go from terminal mode to normal mode
:tnoremap <Esc> <C-\><C-n>

" set line width for markdown files
augroup Markdown
  autocmd!
  autocmd FileType markdown set tw=100
augroup END

" set vimcursor to pipe in normal mode
set guicursor=v-c-sm:block,n-i-ci-ve:ver25,r-cr-o:hor20

" set cursor to underline on exit
":au VimLeave * set guicursor=a:hor25-blinkon10
"
"
let host = system('hostname')
if host== "devfair0234\n"
  let g:python3_host_prog="/private/home/anupamb/miniconda3/bin/python3"
elseif host == 'anupamb-mbp\n'
  let g:python3_host_prog="/usr/local/Cellar/python@3.10/3.10.6_1/bin/python3"
endif
