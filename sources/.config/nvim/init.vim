
syntax on
set mouse=a
set tabstop=4
set shiftwidth=4
set expandtab
set background=dark
set number
set nohlsearch
set relativenumber

" Jump to last location if valid
if has("autocmd")
  au BufReadPost * if line("'\"") > 0 && line("'\"") <= line("$") | exe "normal! g`\"" | endif
endif

