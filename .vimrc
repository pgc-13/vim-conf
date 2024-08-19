" requires vim-plug:
" curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

" install plugins
call plug#begin()
Plug 'KeitaNakamura/neodark.vim'
Plug 'https://github.com/hashivim/vim-terraform.git'
Plug 'tpope/vim-commentary' " to add more filetypes see https://github.com/tpope/vim-commentary?tab=readme-ov-file#faq
Plug 'preservim/vim-markdown'
Plug 'aliou/bats.vim'
call plug#end()

" general editor settings
set encoding=utf-8
set nocompatible
set mouse=a
set nowrap
set number
set backspace=indent,eol,start

syntax enable
filetype plugin indent on

" use 4 space tab expansion for most file types
set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab
set shiftround  
set smarttab    
set autoindent  
set copyindent

" Use ' as a shortcut for the black hole register
noremap ' "_
" Use , as a shortcut for the clipboard register
noremap , "+

" use tabs for Makefiles
autocmd FileType make set noexpandtab softtabstop=0

set termguicolors
colorscheme neodark
