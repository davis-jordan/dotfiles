" checks if your terminal has 24-bit color support
if (has("termguicolors"))
    set termguicolors
    hi LineNr ctermbg=NONE guibg=NONE
endif

syntax enable
" And then somewhere in your init.vim, to set the colorscheme
lua require('colorbuddy').colorscheme('onebuddy')
