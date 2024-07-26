" requires vim-plug:
" curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

" install plugins
call plug#begin()
Plug 'preservim/nerdcommenter'
Plug 'KeitaNakamura/neodark.vim'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'https://github.com/hashivim/vim-terraform.git'
Plug 'godlygeek/tabular'
Plug 'preservim/vim-markdown'
call plug#end()

" general editor settings
set encoding=utf-8
set nobackup
set nowritebackup
set nocompatible
set mouse=a
set nowrap
set number
set updatetime=300
set signcolumn=yes

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

" Use ' as a shortcut for the black hole register
noremap ' "_

" use tabs for Makefiles
autocmd FileType make set noexpandtab softtabstop=0

set termguicolors
colorscheme neodark

let g:NERDCreateDefaultMappings = 1

" Use tab for trigger completion with characters ahead and navigate
" NOTE: There's always complete item selected by default, you may want to enable
" no select by `"suggest.noselect": true` in your configuration file
" NOTE: Use command ':verbose imap <tab>' to make sure tab is not mapped by
" other plugin before putting this into your config
inoremap <silent><expr> <TAB>
      \ coc#pum#visible() ? coc#pum#next(1) :
      \ CheckBackspace() ? "\<Tab>" :
      \ coc#refresh()
inoremap <expr><S-TAB> coc#pum#visible() ? coc#pum#prev(1) : "\<C-h>"

" Make <CR> to accept selected completion item or notify coc.nvim to format
" <C-g>u breaks current undo, please make your own choice
inoremap <silent><expr> <CR> coc#pum#visible() ? coc#pum#confirm()
                              \: "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"


" GoTo code navigation
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

" Formatting selected code
xmap <leader>f  <Plug>(coc-format-selected)
nmap <leader>f  <Plug>(coc-format-selected)

augroup mygroup
  autocmd!
  " Setup formatexpr specified filetype(s)
  autocmd FileType typescript,json setl formatexpr=CocAction('formatSelected')
  " Update signature help on jump placeholder
  autocmd User CocJumpPlaceholder call CocActionAsync('showSignatureHelp')
augroup end
