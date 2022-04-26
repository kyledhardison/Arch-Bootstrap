
syntax on
set mouse=a
set tabstop=4
set shiftwidth=4
set expandtab
set background=dark
set number
set nohlsearch
set relativenumber
set scrolloff=1
set cursorline
set autoindent

" Ignore case if search is all lowercase
set ignorecase
set smartcase

" vsplits split right, splits split below
set splitright
set splitbelow

" Use <space> as leader
let mapleader = " "

" Normal Mode Key Bindings
nnoremap <F5> :NERDTreeToggle<CR>
nnoremap <F6> :NERDTreeFind<CR>

" Command remappings
:command WQ wq
:command Wq wq
:command W w
:command Q q
:command WA wa
:command Wa wa

" Jump to last location if valid
if has("autocmd")
  au BufReadPost * if line("'\"") > 0 && line("'\"") <= line("$") | exe "normal! g`\"" | endif
endif

call plug#begin(stdpath('data') . '/plugged')
Plug 'https://github.com/preservim/nerdtree.git'
Plug 'https://github.com/kien/ctrlp.vim.git'
call plug#end()

" Clear cmd line message
function! s:empty_message(timer)
  if mode() ==# 'n'
    echon ''
  endif
endfunction

augroup cmd_msg_cls
    autocmd!
    autocmd CmdlineLeave :  call timer_start(5000, funcref('s:empty_message'))
augroup END

