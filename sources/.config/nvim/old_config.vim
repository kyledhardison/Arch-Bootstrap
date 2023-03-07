set nocompatible

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
filetype plugin on

" Ignore case if search is all lowercase
set ignorecase
set smartcase

" vsplits split right, splits split below
set splitright
set splitbelow

" Use <space> as leader
let mapleader = " "

set matchpairs+=<:>

" Normal Mode Key Bindings
" NERDTree
nnoremap <F5> :NERDTreeToggle<CR>
nnoremap <F6> :NERDTreeFind<CR>
" wikivim
nnoremap <leader><CR> :VimwikiTabnewLink<CR>
nnoremap <leader>v<CR> :VimwikiVSplitLink<CR>
nnoremap <leader>s<CR> :VimwikiSplitLink<CR>

" Tab navigation
nnoremap <c-L> gt
nnoremap <c-H> gT

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

