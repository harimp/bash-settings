set term=screen-256color

set list
set listchars=tab:▸\ ,trail:¬

" mandatory defaults
set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" our plugins
Plugin 'gmarik/Vundle.vim'
Plugin 'flazz/vim-colorschemes'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'ctrlpvim/ctrlp.vim'

call vundle#end()

colorscheme molokai

syntax on
set number relativenumber

" buffers
set hidden
nnoremap <Tab> :bnext<CR>
nnoremap <S-Tab> :bprev<CR>
nnoremap <C-X> :bdelete<CR>

" Buffer Airline
set laststatus=2 " Always show status
let g:airline#extensions#tabline#enabled = 1
let g:airline_theme='wombat'

" Buffer Search
nmap <Leader>b :CtrlPBuffer<CR>

