" Vim settings"
set expandtab
set tabstop=2
set softtabstop=2
set shiftwidth=2
set number
set relativenumber

" Everforest theme"
set termguicolors
set background=dark
" Set contrast."
" This configuration option should be placed before `colorscheme everforest`."
" -- Available values: 'hard', 'medium'(default), 'soft'"
let g:everforest_background = 'hard'
" -- For better performance"
let g:everforest_better_performance = 1
colorscheme everforest
