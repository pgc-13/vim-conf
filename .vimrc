" enter the current millenium
set nocompatible

set mouse=a

" enable syntax and plugins
colorscheme slate
syntax enable
filetype plugin on

" use 4 space tab expansion for most file types
set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab
set shiftround  
set smarttab    
set autoindent  
set copyindent

" use tabs for Makefiles
autocmd FileType make set noexpandtab softtabstop=0
