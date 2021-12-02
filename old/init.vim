set scrolloff=8
set relativenumber
set nocompatible            " disable compatibility to old-time vi
set showmatch               " show matching
set ignorecase              " case insensitive
set mouse=v                 " middle-click paste with
set hlsearch                " highlight search
set incsearch               " incremental search
set tabstop=4               " number of columns occupied by a tab
set softtabstop=4           " see multiple spaces as tab stops so <BS> does the right thing
set expandtab               " converts tabs to white space
set shiftwidth=4            " width for auto indents
set autoindent              " indent a new line the same amount as the line just typed
set number                  " add line numbers
set wildmode=longest,list   " get bash-like tab completions
set cc=80                  " set an 80 column border for good coding style
filetype plugin indent on   "allow auto-indenting depending on file type
syntax on                   " syntax highlighting
set mouse=a                 " enable mouse click
set clipboard+=unnamedplus   " using system clipboard
filetype plugin on
set cursorline              " highlight current cursor line
set ttyfast                 " Speed up scrolling in Vim
"set spell                 " enable spell check (may need to download language package)
set noswapfile            " disable creating swap file
set backupdir=~/.cache/nvim " Directory to store backup files.




"cursor
:autocmd InsertEnter * set cul
:autocmd InsertLeave * set nocul

"format stuff
autocmd BufWritePre *.js CocCommand prettier.formatFile


" Give more space for displaying messages.
set cmdheight=2

" Having longer update time (default is 4000 ms = 4 s) leads to noticeable
" delays and poor user experience.
set updatetime=50

" Don't pass messages to |ins-completion-menu|.
set shortmess+=c

set colorcolumn=100
highlight ColorColumn ctermbg=0 guibg=lightgrey
set nocompatible


" .vimrc.plug
call plug#begin(has('nvim') ? stdpath('data') . '/plugged' : '~/.vim/plugged')

"Markdown preview
Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app && yarn install'  }

" Git
Plug 'tpope/vim-fugitive'
Plug 'mhinz/vim-signify'
Plug 'tpope/vim-rhubarb'
Plug 'junegunn/gv.vim'

"utils
Plug 'tpope/vim-surround'

" Code completion
Plug 'neoclide/coc.nvim', {'branch': 'release'}

" Code commenter
Plug 'preservim/nerdcommenter'


" Syntax highlighting
Plug 'dense-analysis/ale'

" NERDTree
Plug 'preservim/nerdtree'
"
" Statusbar
Plug 'itchyny/lightline.vim'

" Finder
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'

" File finder
Plug 'vifm/vifm.vim'

"autoclose
Plug 'townk/vim-autoclose'

" Themes
Plug 'morhetz/gruvbox'
Plug 'tomasiser/vim-code-dark'


" Tabs
Plug 'ap/vim-buftabline'
Plug 'octol/vim-cpp-enhanced-highlight'


" Node Plugins
Plug 'moll/vim-node'
Plug 'pangloss/vim-javascript'
Plug 'mxw/vim-jsx'
Plug 'sheerun/vim-polyglot'

"HTML
Plug 'mattn/emmet-vim'

"Vue
Plug 'leafOfTree/vim-vue-plugin'


call plug#end()

set background=dark
colorscheme gruvbox
"colorscheme codedark

let g:javascript_plugin_jsdoc = 1
let g:javascript_plugin_flow = 1
let g:vim_vue_plugin_config = {
      \'syntax': {
      \   'template': ['html'],
      \   'script': ['javascript'],
      \   'style': ['css'],
      \},
      \'full_syntax': [],
      \'initial_indent': [],
      \'attribute': 0,
      \'keyword': 0,
      \'foldexpr': 0,
      \'debug': 0,
      \}


map <C-n> :NERDTreeToggle<CR>
map <C-p> :Files<CR>
map <C-f> :Rg<CR>
map <C-t> :e <cfile><cr>
map <S-Tab> :bn<CR>
map <F5> :setlocal spell! spelllang=en_gb<CR>
map <C-s> :w<CR>
"map <C-w> :bd<CR>
let loaded_matchparen = 1
let mapleader = " "

"move cursor between windows
noremap <C-h> <C-w>h
noremap <C-j> <C-w>j
noremap <C-k> <C-w>k
noremap <C-l> <C-w>l

"move windows
noremap <C-A-H> <C-w>H
noremap <C-A-L> <C-w>L
noremap <C-A-K> <C-w>K
noremap <C-A-J> <C-w>J

"Markdown preivew
"

" CoC
" GoTo code navigation.
nmap <leader>gd <Plug>(coc-definition)
nmap <leader>gy <Plug>(coc-type-definition)
nmap <leader>gi <Plug>(coc-implementation)
nmap <leader>gr <Plug>(coc-references)
nmap <leader>rr <Plug>(coc-rename)
nmap <leader>g[ <Plug>(coc-diagnostic-prev)
nmap <leader>g] <Plug>(coc-diagnostic-next)
nmap <silent> <leader>gp <Plug>(coc-diagnostic-prev-error)
nmap <silent> <leader>gn <Plug>(coc-diagnostic-next-error)
nnoremap <leader>cr :CocRestart
command! -nargs=0 Prettier :CocCommand prettier.formatFile
nmap <C-_>   <Plug>NERDCommenterToggle
"vmap <C-_>   <Plug>NERDCommenterToggle<CR>gv

" Sweet Sweet FuGITive
nmap <leader>gj :diffget //3<CR>
nmap <leader>gf :diffget //2<CR>
nmap <leader>gs :G<CR>

"php maps
let g:user_emmet_leader_key=','
let g:user_emmet_install_global = 0
autocmd FileType html,css EmmetInstall

function! IPhpInsertUse()
    call PhpInsertUse()
    call feedkeys('a',  'n')
endfunction
autocmd FileType php inoremap <Leader>u <Esc>:call IPhpInsertUse()<CR>
autocmd FileType php noremap <Leader>u :call PhpInsertUse()<CR>
let g:php_cs_fixer_php_path = "/usr/bin/php"               " Path to PHP
let g:php_cs_fixer_enable_default_mapping = 1     " Enable the mapping by default (<leader>pcd)
let g:php_cs_fixer_dry_run = 0                    " Call command with dry-run option
let g:php_cs_fixer_verbose = 0                    " Return the output of command if 1, else an inline information.

nmap <leader>ff :CocFix<CR>
"Python Runner

"autocmd Filetype python nnoremap <buffer> <leader>r :w<CR>:vert ter python3 "%"<CR>
"nmap <leader>r :CocCommand python.execInTerminal<CR>
" Formatting selected code.
xmap <leader>f  <Plug>(coc-format-selected)
nmap <leader>f  <Plug>(coc-format-selected)

" Search and replace hotkey
nnoremap H :%s//gc<left><left><left>

" Move highlighted text up and down
vnoremap J :m '>+1<CR>gv=gv
vnoremap K :m '<-2<CR>gv=gv

" Import plugins
if filereadable(expand("~/.vimrc.plug"))
    source ~/.vimrc.plug
endif

" Import Cpp Options
if filereadable(expand("~/.config/nvim/cpp.vim"))
    source ~/.config/nvim/cpp.vim
endif


" Auto complete on enter on coc
inoremap <silent><expr> <cr> pumvisible() ? coc#_select_confirm()
                              \: "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"

" Status bar config
set statusline+=%#warningmsg#

" Fix files automatically on save
let g:ale_fixers = {}
let g:ale_javascript_eslint_use_global = 1
let g:ale_linters = {
  \'javascript': ['eslint'],
  \'vue': ['eslint', 'stylelint', 'tsserver'],
\}

let g:ale_fixers = {
  \'javascript': ['prettier', 'eslint'],
  \'vue': ['eslint', 'stylelint'],
\}

let g:ale_linters_explicit = 1
let g:ale_sign_column_always = 1
let g:ale_sign_error = '>>'
let g:ale_sign_warning = '--'
let g:ale_fix_on_save = 1

" Close NERDTree when closing the last buffer
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

fun! TrimWhitespace()
    let l:save = winsaveview()
    keeppatterns %s/\s\+$//e
    call winrestview(l:save)
endfun

autocmd BufWritePre * :call TrimWhitespace()

command! -bang -nargs=* Rg
  \ call fzf#vim#grep(
  \   'rg --column --line-number --no-heading --color=always --smart-case -- '.shellescape(<q-args>), 1,
  \   fzf#vim#with_preview(), <bang>0)



