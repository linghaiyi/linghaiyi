se ai si ci nu rnu ru ls=2 mouse=a go= ts=4 sw=4 tabstop=4 cul cuc
set backspace=indent,eol,start

if has('nvim')
set guifont=Ubuntu\ Mono:h16
set linespace=0
else
set linespace=-10
se guifont=Ubuntu\ Mono\ 16
endif

sy on
" 常用map
map <F2> mpgg"+yG`p
map <M-Down> :m +1<CR>
map <M-Up> :m -2<CR>
imap <C-CR> <C-o>o
map <C-Tab> :tabn<CR> "切标签页
map <C-h> :%s///g<Left><Left><Left>

" 方便窗口跳转
map <C-Left> <C-w>h
imap <C-Left> <ESC><C-w>hi
map <C-Right> <C-w>l
imap <C-Right> <ESC><C-w>li
map <C-Up> <C-w>k
imap <C-Up> <ESC><C-w>ki
map <C-Down> <C-w>j
imap <C-Down> <ESC><C-w>ji

" 删除一对括号
nnoremap <F3> ma%x`ax 
nn <F5> :!g++ % -o %< -Wall
nn <F7> :!%< < input

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
