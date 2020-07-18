se ai si ci nu rnu ru ls=2 mouse=a go= ts=4 sw=4 tabstop=4
set backspace=indent,eol,start

if has('nvim')
set guifont=Ubuntu\ Mono:h14
set linespace=0
else
set linespace=-10
se guifont=Ubuntu\ Mono\ 16
endif

sy on
map <F2> mpgg"+yG`p
map <M-Down> :m +1<CR>
map <M-Up> :m -2<CR>
imap <C-CR> <C-o>o
map <C-Tab> :tabn<CR> "切标签页
map <C-h> :%s///g<Left><Left><Left>

map <C-Left> h
imap <C-Left> <ESC>hi
map <C-Right> l
imap <C-Right> <ESC>li
map <C-Up> k
imap <C-Up> <ESC>ki
map <C-Down> j
imap <C-Down> <ESC>ji

let g:netrw_browse_split = 4
call plug#begin('~/.vim/plugged')
Plug 'itchyny/lightline.vim'
Plug 'morhetz/gruvbox'
Plug 'easymotion/vim-easymotion'
Plug 'scrooloose/nerdtree'
Plug 'neoclide/coc-snippets'
call plug#end()
colo gruvbox
set bg=dark
