call plug#begin('~/.vim/plugged')
Plug 'arcticicestudio/nord-vim'
Plug 'itchyny/lightline.vim'
Plug 'tpope/vim-sensible'
call plug#end()

colorscheme nord

let g:lightline = {
	\ 'colorscheme': 'nord',
	\ }

