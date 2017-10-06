call plug#begin()
" Basic
Plug 'tpope/vim-sensible'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-git'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-repeat'
Plug 'othree/html5.vim'
Plug 'vim-polyglot'
Plug 'easymotion/vim-easymotion'
Plug 'vim-airline/vim-airline'

" Send stuff to a repl C-c C-c
Plug 'jpalardy/vim-slime'

" Colorschemes
Plug 'flazz/vim-colorschemes'

" Comments
Plug 'scrooloose/nerdcommenter'

" Opening files
Plug 'scrooloose/nerdtree' ", { 'on': 'NERDTreeToggle' }
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }

" Clojure
Plug 'kovisoft/paredit', { 'for': ['clojure', 'scheme'] }
Plug 'guns/vim-clojure-static', { 'for': 'clojure' }
Plug 'kien/rainbow_parentheses.vim', { 'for' : 'clojure' }

" Latex
Plug 'xuhdev/vim-latex-live-preview'

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

autocmd Filetype tex setl updatetime=1
let g:livepreview_previewer = 'open -a Preview'

set shell=bash\ -i
set clipboard+=unnamedplus
"set number
"
set background=dark
let mapleader=","
colorscheme solarized

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

" Tabbing
"set tabstop=2
"set shiftwidth=2
"set expandtab
"set tabstop=2

" Polyglot
let g:polyglot_disabled=['html', 'html5']

" vim-slime with iPython
let g:slime_python_ipython = 1

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
nnoremap <leader>gs :Gstatus<CR>
nnoremap <leader>gc :Gcommit<CR>
nnoremap <leader>gp :Gpush -v<CR>
"nnoremap <leader>gp :!git push<CR>

" Pasting stuff with no line ending in another line
nnoremap <leader>v o<ESC>p

"nnoremap ; : Messes up the repeating of previous char search

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
