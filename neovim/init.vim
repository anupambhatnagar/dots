call plug#begin('~/.config/nvim/plugged')
source $HOME/.config/nvim/plugins/fzf.vim
source $HOME/.config/nvim/plugins/floaterm.vim
source $HOME/.config/nvim/plugins/devicons.vim
source $HOME/.config/nvim/plugins/dracula.vim
source $HOME/.config/nvim/plugins/fugitive.vim
source $HOME/.config/nvim/plugins/nerdtree-syntax-highlight.vim
source $HOME/.config/nvim/plugins/nerdtree.vim
source $HOME/.config/nvim/plugins/vim-airline.vim
source $HOME/.config/nvim/plugins/vim-airline-themes.vim
source $HOME/.config/nvim/plugins/vim-colorschemes.vim
source $HOME/.config/nvim/plugins/vim-test.vim
source $HOME/.config/nvim/plugins/vimspector.vim
source $HOME/.config/nvim/plugins/coc.vim
call plug#end()


set encoding=utf-8								" encoding to use
set number                    		" show line numbers
set relativenumber								" show relative line numbers
set showcmd                   		" show command in bottom bar
set cursorline                		" highlight current line
set wildmenu                  		" visual autocomplete for command menu
set background=dark								" for dark themes
colorscheme cobalt2								" theme name
syntax on													" use syntax highlighting
set tabstop=2                 		" number of visual spaces per tab
set shiftwidth=2
"set softtabstop=2            		" number of spaces in tab when editing
set incsearch                 		" search as characters are entered
set nohlsearch                  	" highlight matches
"set foldenable               		 " enable folding
"set foldlevelstart=10         		 " opens most folds by default
"set foldmethod=indent         		 " fold based on indent level
set ruler                     		" always show current position
set lbr                       		" linebreak on 500 characters
"set tw=80                     		 " tw = text width
set ai                        		" auo indent
set si                        		" smart indent
set wrap                      		" wrap lines
set visualbell                		" no sounds
set showmode                  		" show current mode at the bottom
set ignorecase                		" ignore case while searching
set mouse=a                   		" enable mouse
set clipboard=unnamedplus					" clipboard to use
set backspace=indent,eol,start    " backspace over mentioned items
set hidden												" buffer unloaded when abandoned 
set nobackup											" no backup from coc 
set nowritebackup									" no backup from coc 
set cmdheight=2										" more space for displaying messages
set updatetime=300								" shorter updatetime (default 4000 ms)
set shortmess+=c									" do not pass messages to |ins-completion-menu|.

