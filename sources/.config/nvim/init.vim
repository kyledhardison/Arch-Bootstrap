
syntax on
set mouse=a
set tabstop=4
set shiftwidth=4
set expandtab
set background=dark
set number
set nohlsearch
set relativenumber
set scrolloff=5
set cursorline

" Jump to last location if valid
if has("autocmd")
  au BufReadPost * if line("'\"") > 0 && line("'\"") <= line("$") | exe "normal! g`\"" | endif
endif

call plug#begin(stdpath('data') . '/plugged')
Plug 'https://github.com/preservim/nerdtree.git'
Plug 'https://github.com/kien/ctrlp.vim.git'
call plug#end()

nnoremap <F5> :NERDTreeToggle<CR>
