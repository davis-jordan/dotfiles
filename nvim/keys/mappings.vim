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

" <TAB>: completion.
"inoremap <expr><TAB> pumvisible() ? \<C-n>" : "\<TAB>"

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

" nnoremap <Leader>o o<Esc>^Da
" nnoremap <Leader>O O<Esc>^Da"

" setup mapping to call :LazyGit
nnoremap <silent> <leader>g :LazyGit<CR>

nnoremap <Leader>f :Lines<Cr>

" Rename variable in file
nmap <leader>rr <Plug>(coc-rename)
nnoremap <leader>pr :CocSearch <C-R>=expand("<cword>")<CR><CR>

" Project wide rename

" Close Buffer
nnoremap <Leader>c :bd<CR>
