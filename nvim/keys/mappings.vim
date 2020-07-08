" Better nav for omnicomplete
inoremap <expr> <c-j> ("\<C-n>")
inoremap <expr> <c-k> ("\<C-p>")

" Use alt + hjkl to resize windows
nnoremap ∆ :resize -2<CR>
nnoremap ˚ :resize +2<CR>
nnoremap ˙ :vertical resize -2<CR>
nnoremap ¬ :vertical resize +2<CR>

" I hate escape more than anything else
inoremap jk <Esc>
inoremap kj <Esc>

" Save
nnoremap <Leader>w :w<Cr>

" Easy CAPS
inoremap <c-u> <ESC>viwUi
nnoremap <c-u> viwU<Esc>

" go to next tab 
nnoremap <TAB> :bnext<CR>
" go to previous tab
nnoremap <S-TAB> :bprevious<CR>

" Use jk instead of escape
nnoremap jk <Esc>
nnoremap kj <Esc>
" <TAB>: completion.
"inoremap <expr><TAB> pumvisible() ? \<C-n>" : "\<TAB>"

" vim-commentary
nnoremap <space>/ :Commentary<CR>
vnoremap <space>/ :Commentary<CR>

" Better tabbing
vnoremap < <gv
vnoremap > >gv

" Better window navigation
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

nnoremap <Leader>o o<Esc>^Da
nnoremap <Leader>O O<Esc>^Da"


" setup mapping to call :LazyGit
nnoremap <silent> <leader>lg :LazyGit<CR>
