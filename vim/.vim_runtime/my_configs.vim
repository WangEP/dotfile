set guifont=Monospace\ 14 
set nu
"不显示工具/菜单栏
set guioptions-=m
set guioptions-=L
set guioptions-=r
set guioptions-=b


map <leader>v :vsplit<cr>
map <leader>s :split<cr>

set nocompatible
set winaltkeys=no

inoremap <M-j> <Down>
inoremap <M-k> <Up>
inoremap <M-h> <left>
inoremap <M-l> <Right>


nnoremap <M-j> :resize +5<cr>
nnoremap <M-k> :resize -5<cr>
nnoremap <M-h> :vertical resize -5<cr>
nnoremap <M-l> :vertical resize +5<cr>

inoremap <M-j> <Down>
inoremap <M-k> <Up>
inoremap <M-h> <left>
inoremap <M-l> <Right>
set cursorline
set tags=tags;
set autochdir
set vb t_vb=
au GuiEnter * set t_vb=

" Plug
call plug#begin('~/.vim_runtime/my_plugins/')
    Plug 'vim-scripts/taglist.vim'
    Plug 'majutsushi/tagbar'
    " Plug 'ycm-core/YouCompleteMe'
call plug#end()

" Tlist config
nmap 't :Tlist<cr>
nmap 'y :Tagbar<cr>
let Tlist_Use_Right_Window = 1
let Tlist_Show_One_File=1 


" go tag
let g:tagbar_type_go = {
	\ 'ctagstype' : 'go',
	\ 'kinds'     : [
		\ 'p:package',
		\ 'i:imports:1',
		\ 'c:constants',
		\ 'v:variables',
		\ 't:types',
		\ 'n:interfaces',
		\ 'w:fields',
		\ 'e:embedded',
		\ 'm:methods',
		\ 'r:constructor',
		\ 'f:functions'
	\ ],
	\ 'sro' : '.',
	\ 'kind2scope' : {
		\ 't' : 'ctype',
		\ 'n' : 'ntype'
	\ },
	\ 'scope2kind' : {
		\ 'ctype' : 't',
		\ 'ntype' : 'n'
	\ },
	\ 'ctagsbin'  : 'gotags',
	\ 'ctagsargs' : '-sort -silent'
\ }

