" auto-install vim-plug
if empty(glob('~/.config/nvim/autoload/plug.vim'))
  silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall
  autocmd VimEnter * PlugInstall | source $MYVIMRC
endif

call plug#begin('~/.config/nvim/autoload/plugged')
    " Better Syntax Support
    Plug 'sheerun/vim-polyglot'
    " Auto pairs for '(' '[' '{'
    Plug 'jiangmiao/auto-pairs'
    " Themes
    Plug 'joshdick/onedark.vim'
    " Intelllisense
    Plug 'neoclide/coc.nvim', {'branch': 'release'}
    " Status Line 
    Plug 'vim-airline/vim-airline'
    Plug 'vim-airline/vim-airline-themes'
    " Ranger
    Plug 'kevinhwang91/rnvimr', {'do': 'make sync'} 
    " Comment Lines 
    Plug 'tpope/vim-commentary'
    " Startify
    Plug 'mhinz/vim-startify'
    " FZF
    Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
    Plug 'junegunn/fzf.vim'
    Plug 'airblade/vim-rooter'
    " lazygit
    Plug 'kdheepak/lazygit.nvim', { 'branch': 'nvim-v0.4.3' }
    " Colorizer
    Plug 'norcalli/nvim-colorizer.lua'
    " Snippets
    Plug 'honza/vim-snippets'
    " OneDark
    Plug 'KeitaNakamura/neodark.vim'
    " Color Scheme
    Plug 'rakr/vim-one'
    " Better Javascript Syntax highlighting
    Plug 'pangloss/vim-javascript'
    " Floating Terminal
    Plug 'voldikss/vim-floaterm'
    " Quickscope
    Plug 'unblevable/quick-scope'
    " Sneak
    Plug 'justinmk/vim-sneak'
    " Smooth Scrolling
    Plug 'yuttie/comfortable-motion.vim'
    " X-code colorscheme
    Plug 'arzg/vim-colors-xcode'

    
call plug#end()
