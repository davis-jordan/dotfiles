let g:startify_lists = [
          \ { 'type': 'files',     'header': ['   Files']            },
          \ { 'type': 'dir',       'header': ['   Current Directory '. getcwd()] },
          \ { 'type': 'sessions',  'header': ['   Sessions']       },
          \ { 'type': 'bookmarks', 'header': ['   Bookmarks']      },
          \ ]

let g:startify_bookmarks = [
            \ { 'i': '~/.config/nvim/init.vim' },
            \ { 'v': '~/.config/nvim/general/settings.vim' },
            \ { 'z': '~/.zshrc' },
            \ { 't': '~/Documents/Taiv/Code/TaiV/TaiV_TV_Client/screens/MainScreen.js'},
            \ { 'w': '~/Documents/Taiv/Code/TaiV/TaiV_Web_App/src/index.js'},
            \ { 's': '~/Documents/Taiv/Code/TaiV/TaiV_Server/functions/index.js'},
            \ { 'd': '~/Documents/Taiv/Code/TaiV/taiv_utilities_dashboard/src/App.js'},
            \ { 'a': '~/Documents/Taiv/Code/TaiV/TaiV_Ad_Manager/src/screens/Create.js'},
            \ { 'c': '~/Documents/Taiv/Code/TaiV/Taiv_Web_Common/package.json'},
            \ ]

let g:startify_session_autoload = 1
let g:startify_change_to_vcs_root = 1
let g:startify_fortune_use_unicode = 1
let g:startify_session_persistence = 1
let g:startify_enable_special = 0
