call plug#begin()
" Basic
Plug 'tpope/vim-sensible'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-repeat'
Plug 'sheerun/vim-polyglot'
Plug 'easymotion/vim-easymotion'
Plug 'vim-airline/vim-airline'

" Colorschemes
Plug 'flazz/vim-colorschemes'

" Code navigation (go to definition)
"Plug 'ludovicchabant/vim-gutentags'

" Comments
Plug 'scrooloose/nerdcommenter'

" Opening files
Plug 'scrooloose/nerdtree' ", { 'on': 'NERDTreeToggle' }
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }

" Clojure
Plug 'kovisoft/paredit', { 'for': ['clojure', 'scheme'] }
Plug 'guns/vim-clojure-static', { 'for': 'clojure' }
Plug 'kien/rainbow_parentheses.vim', { 'for' : 'clojure' }

"Trailing whitespace
Plug 'bronson/vim-trailing-whitespace'

"HTML Zen coding
Plug 'mattn/emmet-vim'

"VueJS IDE
Plug 'posva/vim-vue'
Plug 'othree/html5.vim'

call plug#end()

filetype indent on

"new
set nocompatible

set modelines=0

set tabstop=2
set shiftwidth=2
set softtabstop=2
set expandtab

"set encoding=utf8 errors on nvim
set scrolloff=3
set autoindent
set showmode
set showcmd
set hidden
set wildmenu
set wildmode=list:longest
set visualbell
set cursorline
set ttyfast
set ruler
set backspace=indent,eol,start
set laststatus=2
set relativenumber
set undofile

"fuzzy search
set path+=**
set wildmenu
"pause new

"gutentags
"let g:gutentags_cache_dir = '~/.gutentags'
"let g:gutentags_exclude_project_root = ['/usr/local','~/workspace/signal/tmp','~/workspace/signal/Research-Notebooks']
"let g:gutentags_ctags_exclude = ['tmp/*','data/*','models/*','vectorisers/*','scripts/*']
"let g:gutentags_file_list_command = {
   "\ 'markers': {
     "\ '.git': 'git ls-files'
   "\ },
"\ }

set shell=bash\ -i
set clipboard+=unnamedplus
"set number
"
set background=dark
let mapleader=","
colorscheme molokai

"new

" search
nnoremap / /\v
vnoremap / /\v
set ignorecase
set smartcase
set gdefault
set incsearch
set showmatch
set hlsearch
nnoremap <leader><space> :noh<cr>
nnoremap <tab> %
vnoremap <tab> %

"lines
set wrap
set textwidth=79
set formatoptions=qrn1
set colorcolumn=85

"pause new

" mouse
set mouse=a
"

" Tabbing
"set tabstop=2
"set shiftwidth=2
"set expandtab
"set tabstop=2

" cpp compile and run
nnoremap <leader>cr :!g++ % && ./a.out <CR>
nnoremap <leader>co :!g++ % <CR>

" Autosource myself
nnoremap <leader>s<Space> :so %<CR>

" Surround with spaces
nnoremap <leader>ss s<Space><Space><C-[>P

" Nerdtree
let g:NERDTreeHijackNetrw = 1
nnoremap <leader>n<Space> :NERDTreeToggle<CR>

" Pasting stuff with no line ending in another line
nnoremap <leader>v o<ESC>p

" fzf
let $FZF_DEFAULT_COMMAND = 'find .'
nnoremap <C-p> :FZF<CR>
" nnoremap <C-t> :FZF ~/

" rainbow parentheses
let g:rbpt_colorpairs = [
    \ ['brown',       'RoyalBlue3'],
    \ ['Darkblue',    'SeaGreen3'],
    \ ['darkgray',    'DarkOrchid3'],
    \ ['darkgreen',   'firebrick3'],
    \ ['darkcyan',    'RoyalBlue3'],
    \ ['darkred',     'SeaGreen3'],
    \ ['darkmagenta', 'DarkOrchid3'],
    \ ['brown',       'firebrick3'],
    \ ['gray',        'RoyalBlue3'],
    \ ['black',       'SeaGreen3'],
    \ ['darkmagenta', 'DarkOrchid3'],
    \ ['Darkblue',    'firebrick3'],
    \ ['darkgreen',   'RoyalBlue3'],
    \ ['darkcyan',    'SeaGreen3'],
    \ ['darkred',     'DarkOrchid3'],
    \ ['red',         'firebrick3'],
    \ ]
let g:rbpt_max = 16
let g:rbpt_loadcmd_toggle = 0

au VimEnter NERD_tree_1 enew | execute 'NERDTree '.argv()[0]
