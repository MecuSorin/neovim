" Leader setup
let mapleader = ' '
let maplocalleader = ','

" Specify a directory for plugins
call plug#begin('~/.local/share/nvim/plugged')

Plug 'editorconfig/editorconfig-vim'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
" Plug 'ervandew/supertab'
Plug 'terryma/vim-multiple-cursors'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-markdown'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-commentary'
Plug 'easymotion/vim-easymotion'
Plug 'neovimhaskell/haskell-vim'
"Plug 'nbouscal/vim-stylish-haskell'
"Plug 'w0rp/ale'
Plug 'godlygeek/tabular'
Plug 'luochen1990/rainbow'

" Colorschemes
" Plug 'morhetz/gruvbox'
Plug 'mhartington/oceanic-next'
" Plug 'tyrannicaltoucan/vim-deep-space'
Plug 'drewtempelmeyer/palenight.vim'
Plug 'lifepillar/vim-solarized8'

" Haskell
Plug 'edkolev/curry.vim'
" Plug 'parsonsmatt/vim2hs'
" Plug 'enomsg/vim-haskellConcealPlus'

" Coq
"Plug 'the-lambda-church/coquille'
"Plug 'let-def/vimbufsync'

" Idris
"Plug 'idris-hackers/idris-vim'
"Plug 'vim-syntastic/syntastic'

" Agda
"Plug 'derekelkins/agda-vim'

" Testing
" Plug 'https://github.com/junegunn/vim-github-dashboard.git'


" Initialize plugin system
call plug#end()

" Plugin setup

" rainbow
let g:rainbow_active=1

" Not sure
execute "set t_8f=\e[38;2;%lu;%lu;%lum"

let $NVIM_TUI_ENABLE_TRUE_COLOR = 1

" au TermOpen * setlocal nonumber norelativenumber

set number relativenumber
set nu rnu

"set colorcolumn=81

set tabstop=4
set shiftwidth=0
set expandtab
set autoindent
set backspace=indent,eol,start

filetype plugin indent on
syntax on

" fzf
set splitbelow splitright

" Theme and stuff?
set background=dark
set termguicolors
colorscheme OceanicNext
let g:airline_theme = 'oceanicnext'
let g:palenight_terminal_italics=1

" highlight Conceal ctermbg=NONE guibg=NONE
map <Leader>cl :set background=light<cr>:colorscheme solarized8<cr>let g:airline_theme = 'base16'<cr>
map <Leader>cd :set background=dark<cr>:colorscheme gruvbox<cr>let g:airline_theme = 'gruvbox'<cr>

" Haskell
let g:haskell_conceal = 0
let g:haskell_conceal_wide = 0
let g:haskell_coneal_enumerations = 0
let g:haskell_hsp = 0

let g:idris_conceal = 1

"let hscoptions="bfl↱tT"
let hscoptions="rbfl↱tSMBQZNDC"

" Noop the arrow keys in normal mode
noremap <Up> <nop>
noremap <Down> <nop>
noremap <Left> <nop>
noremap <Right> <nop>
noremap <PageUp> <nop>
noremap <PageDown> <nop>

" Better search
set incsearch
set hlsearch
set smartcase

au InsertEnter * set nocursorline
au InsertLeave * set cursorline

set cursorline
set cursorcolumn

set scrolloff=5

" Disable folding
set nofoldenable

set ruler

"Hide search highlights when static
autocmd cursorhold * set nohlsearch
autocmd cursormoved * set hlsearch


exe 'source' '~/.config/nvim/keys_others.vim'
exe 'source' '~/.config/nvim/keys.vim'
