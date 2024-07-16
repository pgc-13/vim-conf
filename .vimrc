" requires vim-plug:
" curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

" install plugins
call plug#begin()
Plug 'KeitaNakamura/neodark.vim'
Plug 'https://github.com/hashivim/vim-terraform.git'
call plug#end()


" general editor settings
set nocompatible
set mouse=a
set nowrap

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

set termguicolors
colorscheme neodark
