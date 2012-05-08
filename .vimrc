call pathogen#infect()
syntax on
filetype plugin indent on
colorscheme darkblue
set tabstop=2
call pathogen#runtime_append_all_bundles()
call pathogen#helptags()
set t_Co=256
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif
