set nowrap
set number
set relativenumber
set tabstop=4
set expandtab
set shiftwidth=4
set scrolloff=5
set cursorline
set indentexpr=""
set wildmenu
set termguicolors

syntax on
colorscheme slate

let mapleader=" "

nnoremap <leader>e :Explore<CR>
nnoremap <leader>E :explore<CR>
nnoremap <leader> <C-w>

set path+=**
set wildignore+=**/.git
