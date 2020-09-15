if (has("autocmd"))
  augroup colorextend
    autocmd!
    " Make `Function`s bold in GUI mode
    autocmd ColorScheme * call onedark#extend_highlight("Function", { "gui": "bold" })
    " Override the `Statement` foreground color in 256-color mode
    autocmd ColorScheme * call onedark#extend_highlight("Statement", { "fg": { "cterm": 128 } })
    " Override the `Identifier` background color in GUI mode
    autocmd ColorScheme * call onedark#extend_highlight("Identifier", { "bg": { "gui": "#333333" } })

    " autocmd ColorScheme * call onedark#extend_highlight("jsObjectKey", { "fg": { "gui": "#395533" } })
    " autocmd ColorScheme * call onedark#extend_highlight("jsGlobalObjects", { "fg": { "gui": "#395533" } })

    " autocmd ColorScheme * call onedark#extend_highlight("javaScriptIdentifier", { "fg": { "gui": "#e06c75" } })

  augroup END
endif

hi Comment cterm=italic
let g:onedark_hide_endofbuffer=1
let g:onedark_terminal_italics=1
let g:onedark_termcolors=256

" checks if your terminal has 24-bit color support
if (has("termguicolors"))
    set termguicolors
    hi LineNr ctermbg=NONE guibg=NONE
endif

syntax enable
colorscheme onedark


