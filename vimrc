syntax on

let mapleader = " " " set leader key to space
nnoremap <Space> <Nop>

nmap oo m`o<Esc>`` " insert new line below (no insert mode)
nmap OO m`O<Esc>`` " insert new line above (no insert mode)

noremap ∆ <esc> " set alt-j to esc
inoremap ∆ <esc> " set alt-j to esc in insert mode
set noerrorbells

set belloff=all
set tabstop=2 softtabstop=2
set shiftwidth=4
set expandtab
set smartindent
set nowrap
set number relativenumber
set nu rnu
set smartcase
set noswapfile
set nobackup
set undodir=~/.vim/undodir
set undofile
set incsearch

set backspace=indent,eol,start

call plug#begin('~/.vim/plugged')
Plug 'dracula/vim', { 'as': 'dracula' }
Plug 'jremmen/vim-ripgrep'
Plug 'tpope/vim-fugitive'
Plug 'mxw/vim-jsx'
Plug 'pangloss/vim-javascript'
Plug 'vim-utils/vim-man'
Plug 'lyuts/vim-rtags'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'Valloric/YouCompleteMe'
Plug 'mbbill/undotree'
Plug 'preservim/nerdtree'
call plug#end()

colorscheme dracula

let g:netrw_browse_split=2
let g:netrw_winsize=35



