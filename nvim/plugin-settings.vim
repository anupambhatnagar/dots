" vim-airline settings
let g:airline_theme='powerlineish'

if !exists('g:airline_symbols')
    let g:airline_symbols = {}
endif

" powerline symbols
let g:airline_symbols.branch = ''
let g:airline_symbols.dirty='⚡'

" enable powerline fonts
" let g:airline_powerline_fonts=1
" enable tabline
let g:airline#extensions#tabline#enabled=1
" filename only in tabline
let g:airline#extensions#tabline#fnamemod = ':t'
" show git branch
let g:airline#extensions#branch#enabled=1
let g:airline_section_y = ' %p%%'

"modify section Z - line and column number along with Obsession status
let g:airline_section_z = '%l:%c  %{ObsessionStatus()}  %p'

let g:airline#extensions#tabline#buffer_idx_mode = 1
nmap <leader>1 <Plug>AirlineSelectTab1
nmap <leader>2 <Plug>AirlineSelectTab2
nmap <leader>3 <Plug>AirlineSelectTab3
nmap <leader>4 <Plug>AirlineSelectTab4
nmap <leader>5 <Plug>AirlineSelectTab5
nmap <leader>6 <Plug>AirlineSelectTab6
nmap <leader>7 <Plug>AirlineSelectTab7
nmap <leader>8 <Plug>AirlineSelectTab8
nmap <leader>9 <Plug>AirlineSelectTab9
nmap <leader>0 <Plug>AirlineSelectTab0
nmap <leader>- <Plug>AirlineSelectPrevTab
nmap <leader>= <Plug>AirlineSelectNextTab

"show tab number
let g:airline#extensions#tabline#tab_nr_type = 1

"------------------------------------------------------------------------------
" vim-cmake settings
let g:cmake_link_compile_commands = 1
let g:cmake_root_markers = []
nmap <leader>cg :CMakeGenerate<cr>
nmap <leader>cb :CMakeBuild<cr>
nmap <leader>cc :CMakeClean<cr>
nmap <leader>cq :CMakeClose<cr>


"------------------------------------------------------------------------------
" vim devicons settings
" fix for square bracket around icons
" if syntax is not on, then enable it
if !exists('g:syntax_on')
  syntax enable
endif

" if webdevicons are loaded then refresh them
if exists("g:loaded_webdevicons")
  call webdevicons#refresh()
endif


"------------------------------------------------------------------------------
" vim-obsession settings
" make and break session
nmap <leader>ms :Obsession<CR>
nmap <leader>bs :Obsession!<CR>


"------------------------------------------------------------------------------
" vim-floaterm settings
nnoremap <silent> <leader>t :FloatermToggle<CR>
tnoremap <silent> <leader>t <C-\><C-n>:FloatermToggle<CR>
hi FloatermBorder guibg=orange
" set height and width of floaterm window
let g:floaterm_height=0.8
let g:floaterm_width=0.8

"------------------------------------------------------------------------------
" fzf settings
let g:fzf_layout = { 'up': '~90%', 'window': { 'width': 0.8, 'height': 0.8, 'yoffset':0.5, 'xoffset': 0.5 } }
let $FZF_DEFAULT_OPTS = '--layout=reverse --info=inline'
nnoremap <C-p> :<C-u>FZF<CR>


"------------------------------------------------------------------------------
" vim-gtest settings
nmap <leader>r :GTestRun<CR>


"------------------------------------------------------------------------------
" markdown preview settings
nmap <leader>mp :MarkdownPreview<CR>


"------------------------------------------------------------------------------
" nerdtree settings
let NERDTreeShowHidden=1
nnoremap <expr> <leader>n g:NERDTree.IsOpen() ? ':NERDTreeClose<CR>' : @% == '' ? ':NERDTree<CR>' : ':NERDTreeFind<CR>'
nmap <leader>N :NERDTreeFind<CR>

" Exit Vim if NERDTree is the only window remaining in the only tab.
autocmd BufEnter * if tabpagenr('$') == 1 && winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() | quit | endif

" If more than one window and previous buffer was NERDTree, go back to it.
autocmd BufEnter * if bufname('#') =~# "^NERD_tree_" && winnr('$') > 1 | b# | endif
let g:plug_window = 'noautocmd vertical topleft new'


"------------------------------------------------------------------------------
"sneak settings
let g:sneak#label = 1
" make search case insensitive
let g:sneak#use_ic_scs = 1


"------------------------------------------------------------------------------
" startify settings
let g:startify_bookmarks = [
  \ {'z': '~/github/dots/.zshrc'},
  \ {'v': '~/.config/nvim/init.vim'},
  \ {'k': '~/github/dots/kitty/kitty.conf'}
  \ ]

let g:startify_lists = [
  \ {'header': ['Bookmarks'], 'type': 'bookmarks'},
  \ {'header': ['MRU'], 'type': 'files'}
  \ ]

nnoremap <leader>s :Startify<CR>


"------------------------------------------------------------------------------
" ultisnips settings
let g:UltiSnipsEditSplit="vertical"


"------------------------------------------------------------------------------
" vim-test settings
let test#strategy = "neovim"
let test#neovim#term_position = "vert"
let g:test#python#pytest#executable = 'python3 -m pytest -rA'

nmap <leader>rt :TestNearest<CR>


"------------------------------------------------------------------------------
"Scatch.vim settings
let g:scratch_height = 25
let g:scratch_persistence_file = '.scratch.vim'
nnoremap <C-s> :Scratch<CR>


"------------------------------------------------------------------------------
" treesitter settings
" set foldmethod=expr
" set foldexpr=nvim_treesitter#foldexpr()
lua <<EOF
require'nvim-treesitter.configs'.setup {
  -- One of "all", "maintained" (parsers with maintainers), or a list of languages
  ensure_installed = {'python', 'cpp'},

  -- Install languages synchronously (only applied to `ensure_installed`)
  sync_install = false,

  -- List of parsers to ignore installing
  ignore_install = { },

  highlight = {
    -- `false` will disable the whole extension
    enable = true,

    -- list of language that will be disabled
    disable = { },

    -- Setting this to true will run `:h syntax` and tree-sitter at the same time.
    -- Set this to `true` if you depend on 'syntax' being enabled (like for indentation).
    -- Using this option may slow down your editor, and you may see some duplicate highlights.
    -- Instead of true it can also be a list of languages
    additional_vim_regex_highlighting = false,
  },
}
EOF


"------------------------------------------------------------------------------
" vimspector settings
"let g:vimspector_enable_mappings = 'HUMAN'
let g:vimspector_install_gadgets = ['debugpy', 'vscode-cpptools']
nmap <F4> :call vimspector#Launch()<CR>
nmap <F5> <Plug>VimspectorContinue<CR>
nmap <F6> :VimspectorStop<CR>
nmap <F7> :VimspectorReset<CR>

nmap <F9> <Plug>VimspectorToggleBreakpoint
nmap <F10> <Plug>VimspectorStepOver
nmap <F11> <Plug>VimspectorStepInto
nmap <F12> <Plug>VimspectorStepOut

function! PythonStrategy(cmd)
  call vimspector#LaunchWithSettings(#{configuration : 'pytest', testName : split(a:cmd, '::')[1]})
endfunction

let test#custom_strategies = {'testpy': function('PythonStrategy')}

function! CppStrategy(input)
  call vimspector#LaunchWithSettings(#{configuration: 'debug_test', testName: a:input})
endfunction

" set python3 host program for nvim; this is used in .vimspector.json
let host = system('hostname')
if host == "devfair0234\n"
  let g:python3_host_prog="/private/home/anupamb/miniconda3/bin/python3"
elseif host == "anupamb-mbp (2)\n"
  let g:python3_host_prog="/Library/Frameworks/Python.framework/Versions/3.11/bin/python3"
endif

"------------------------------------------------------------------------------
" coc settings
" Always show the signcolumn, otherwise it would shift the text each time
" diagnostics appear/become resolved.
"if has("nvim-0.5.0") || has("patch-8.1.1564")
"  " Recently vim can merge signcolumn and number colmn into one
"  set signcolumn=number
"else
"  set signcolumn=yes
"endif

" Use tab for trigger completion with characters ahead and navigate.
" NOTE: Use command ':verbose imap <tab>' to make sure tab is not mapped by
" other plugin before putting this into your config.
inoremap <silent><expr> <TAB>
      \ coc#pum#visible() ? coc#pum#next(1):
      \ <SID>check_back_space() ? "\<Tab>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

" Use <c-space> to trigger completion.
if has('nvim')
  inoremap <silent><expr> <c-space> coc#refresh()
else
  inoremap <silent><expr> <c-@> coc#refresh()
endif

" Make <CR> auto-select the first completion item and notify coc.nvim to
" format on enter, <cr> could be remapped by other vim plugin
inoremap <silent><expr> <CR> coc#pum#visible() ? coc#pum#confirm() : "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"

" Use `[g` and `]g` to navigate diagnostics
" Use `:CocDiagnostics` to get all diagnostics of current buffer in location list.
nmap <silent> [g <Plug>(coc-diagnostic-prev)
nmap <silent> ]g <Plug>(coc-diagnostic-next)

" GoTo code navigation.
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

" Use K to show documentation in preview window.
" nnoremap <silent> K :call <SID>show_documentation()<CR>

"function! s:show_documentation()
"  if (index(['vim','help'], &filetype) >= 0)
"    execute 'h '.expand('<cword>')
"  elseif (coc#rpc#ready())
"    call CocActionAsync('doHover')
"  else
"    execute '!' . &keywordprg . " " . expand('<cword>')
"  endif
"endfunction

" Highlight the symbol and its references when holding the cursor.
autocmd CursorHold * silent call CocActionAsync('highlight')

" Symbol renaming.
nmap <leader>rn <Plug>(coc-rename)

" Formatting selected code.
xmap <leader>f  <Plug>(coc-format-selected)
nmap <leader>f  <Plug>(coc-format-selected)

augroup mygroup
  autocmd!
  " Setup formatexpr specified filetype(s).
  autocmd FileType typescript,json setl formatexpr=CocAction('formatSelected')
  " Update signature help on jump placeholder.
  autocmd User CocJumpPlaceholder call CocActionAsync('showSignatureHelp')
augroup end

" Applying codeAction to the selected region.
" Example: `<leader>aap` for current paragraph
" xmap <leader>a  <Plug>(coc-codeaction-selected)
" nmap <leader>a  <Plug>(coc-codeaction-selected)

" Remap keys for applying codeAction to the current buffer.
" nmap <leader>ac  <Plug>(coc-codeaction)
" Apply AutoFix to problem on the current line.
" nmap <leader>qf  <Plug>(coc-fix-current)

" Run the Code Lens action on the current line.
" nmap <leader>cl  <Plug>(coc-codelens-action)

" Map function and class text objects
" NOTE: Requires 'textDocument.documentSymbol' support from the language server.
" xmap if <Plug>(coc-funcobj-i)
" omap if <Plug>(coc-funcobj-i)
" xmap af <Plug>(coc-funcobj-a)
" omap af <Plug>(coc-funcobj-a)
" xmap ic <Plug>(coc-classobj-i)
" omap ic <Plug>(coc-classobj-i)
" xmap ac <Plug>(coc-classobj-a)
" omap ac <Plug>(coc-classobj-a)

" Remap <C-f> and <C-b> for scroll float windows/popups.
if has('nvim-0.4.0') || has('patch-8.2.0750')
  nnoremap <silent><nowait><expr> <C-f> coc#float#has_scroll() ? coc#float#scroll(1) : "\<C-f>"
  nnoremap <silent><nowait><expr> <C-b> coc#float#has_scroll() ? coc#float#scroll(0) : "\<C-b>"
  inoremap <silent><nowait><expr> <C-f> coc#float#has_scroll() ? "\<c-r>=coc#float#scroll(1)\<cr>" : "\<Right>"
  inoremap <silent><nowait><expr> <C-b> coc#float#has_scroll() ? "\<c-r>=coc#float#scroll(0)\<cr>" : "\<Left>"
  vnoremap <silent><nowait><expr> <C-f> coc#float#has_scroll() ? coc#float#scroll(1) : "\<C-f>"
  vnoremap <silent><nowait><expr> <C-b> coc#float#has_scroll() ? coc#float#scroll(0) : "\<C-b>"
endif

" Use CTRL-S for selections ranges.
" Requires 'textDocument/selectionRange' support of language server.
" nmap <silent> <C-s> <Plug>(coc-range-select)
" xmap <silent> <C-s> <Plug>(coc-range-select)

" Add `:Format` command to format current buffer.
command! -nargs=0 Format :call CocAction('format')

" Add `:Fold` command to fold current buffer.
command! -nargs=? Fold :call     CocAction('fold', <f-args>)

" Add `:OR` command for organize imports of the current buffer.
command! -nargs=0 OR   :call     CocActionAsync('runCommand', 'editor.action.organizeImport')

" Add (Neo)Vim's native statusline support.
" NOTE: Please see `:h coc-status` for integrations with external plugins that
" provide custom statusline: lightline.vim, vim-airline.
set statusline^=%{coc#status()}%{get(b:,'coc_current_function','')}

" Mappings for CoCList
" Show all diagnostics.
" nnoremap <silent><nowait> <space>a  :<C-u>CocList diagnostics<cr>
" Manage extensions.
" nnoremap <silent><nowait> <space>e  :<C-u>CocList extensions<cr>
" Show commands.
" nnoremap <silent><nowait> <space>c  :<C-u>CocList commands<cr>
" Find symbol of current document.
" nnoremap <silent><nowait> <space>o  :<C-u>CocList outline<cr>
" Search workspace symbols.
" nnoremap <silent><nowait> <space>s  :<C-u>CocList -I symbols<cr>
" Do default action for next item.
" nnoremap <silent><nowait> <space>j  :<C-u>CocNext<CR>
" Do default action for previous item.
" nnoremap <silent><nowait> <space>k  :<C-u>CocPrev<CR>
" Resume latest coc list.
" nnoremap <silent><nowait> <space>p  :<C-u>CocListResume<CR>u

"coc-extensions to install
let g:coc_global_extensions = ['coc-pyright', 'coc-sh', 'coc-yaml', 'coc-json', 'coc-git', 'coc-clangd', 'coc-cmake']
hi CocMenuSel ctermbg=237 guibg=#13354A
