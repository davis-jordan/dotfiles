vim.api.nvim_exec([[
" Trigger a highlight in the appropriate direction when pressing these keys:
let g:qs_highlight_on_keys = ['f', 'F', 't', 'T']

highlight QuickScopePrimary guifg='#7aff78' gui=underline ctermfg=155 cterm=underline
highlight QuickScopeSecondary guifg='#de34eb' gui=underline ctermfg=81 cterm=underline

augroup qs_colors
  autocmd!
  autocmd ColorScheme * highlight QuickScopePrimary guifg='#afff5f' gui=underline ctermfg=155 cterm=underline
  autocmd ColorScheme * highlight QuickScopeSecondary guifg='#5fffff' gui=underline ctermfg=81 cterm=underline
augroup END

let g:qs_hi_priority = 2


let g:qs_buftype_blacklist = ['terminal', 'nofile', 'dashboard', 'startify']

]], false)
