" gBetter nav for omnicomplete
inoremap <expr> <c-j> ("\<C-n>")
inoremap <expr> <c-k> ("\<C-p>")

" Use alt + hjkl to resize windows
nnoremap ∆ :resize -2<CR>
nnoremap ˚ :resize +2<CR>
nnoremap ˙ :vertical resize -2<CR>
nnoremap ¬ :vertical resize +2<CR>

" Remap esc to jk in insert mode 
inoremap jk <Esc>
inoremap kj <Esc>

" Escape Visual Mode with space
xnoremap <Space> <Esc>

" Save
nnoremap <Leader>w :w<Cr>

" Easy CAPS
inoremap <c-u> <ESC>viwUi
nnoremap <c-u> viwU<Esc>

" go to next tab 
nnoremap <TAB> :bnext<CR>
" go to previous tab
nnoremap <S-TAB> :bprevious<CR>

" vim-commentary
nnoremap <Leader>/ :Commentary<CR>
vnoremap <Leader>/ :Commentary<CR>

" Better tabbing
vnoremap < <gv
vnoremap > >gv

" Better window navigation
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

" setup mapping to call :LazyGit
nnoremap <silent> <leader>g :LazyGit<CR>

" Find
nnoremap <Leader>f :BLines<Cr>

" Close Buffer
nnoremap <Leader>c :bd<CR>

" Rename variable in file
nnoremap <Leader>pr :CocSearch <C-R>=expand("<cword>")<CR><CR>


