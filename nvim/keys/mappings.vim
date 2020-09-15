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

" Quick Save
nnoremap <Leader>w :w<Cr>
" Quick quit
nnoremap <Leader>q :q<Cr>

" easy caps
inoremap <c-u> <esc>viwUi
nnoremap <c-u> viwu<esc>

" go to next tab 
nnoremap <tab> :bnext<CR>
" go to previous tab
nnoremap <s-tab> :bprevious<CR>

" vim-commentary
nnoremap <leader>/ :Commentary<CR>
vnoremap <leader>/ :Commentary<CR>

" better tabbing
vnoremap < <gv
vnoremap > >gv

" make y effect to end of line instead of whole line
map Y y$

" paste last yanked text
nnoremap <leader>p "0p

" better window navigation
nnoremap <c-h> <c-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

" setup mapping to call :LazyGit
nnoremap <silent> <leader>g :LazyGit<CR>

" Find
nnoremap <Leader>f :BLines<Cr>

" Files
nnoremap <Leader>n :Files<Cr>

" Close Buffer
nnoremap <Leader>c :bp<cr>:bd #<cr>

" Rename variable in file
nnoremap <Leader>gr :CocSearch <C-R>=expand("<cword>")<CR><CR>

" nnoremap <silent> <Leader>t :FloatermNew<CR>
nnoremap <silent> <Leader>T :FloatermToggle<CR>
tnoremap <silent> <Leader>T <C-\><C-n>:FloatermToggle<CR>

