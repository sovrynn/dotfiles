syntax on
set wrap
set smartindent
set number
set noerrorbells
set incsearch
set noswapfile

let mapleader = " "
nnoremap <leader>nt :NERDTree<ENTER>
nnoremap <leader>w <C-W>w
nnoremap <leader>h <C-W>h
nnoremap <leader>j <C-W>j
nnoremap <leader>k <C-W>k
nnoremap <leader>l <C-W>l

filetype plugin indent on
set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab

" ---------- PLUGINS ----------
set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'

Plugin 'preservim/nerdtree'
Plugin 'morhetz/gruvbox'
Plugin 'godlygeek/tabular'   	  " required for vim-markdown
Plugin 'plasticboy/vim-markdown'  " removes quotation highlighting in markdown

call vundle#end()
filetype plugin indent on
" ---------- PLUGINS ----------

set background=dark
let g:gruvbox_contrast_dark = 'hard'
let g:gruvbox_contrast_light = 'hard'
colorscheme gruvbox

" disable markdown folding
set nofoldenable

" Open NERDTree when running vim without a file
function! StartUp()
    if 0 == argc()
	NERDTree
    end
endfunction

autocmd VimEnter * call StartUp()
