" Enabling syntax highlighting
syntax on

" Leader shortcuts
:let mapleader = " "
nmap <leader>nt :NERDTree<ENTER>
nmap <leader>w <C-W>w
nmap <leader>h <C-W>h
nmap <leader>l <C-W>l

" word wrapping
:set wrap

" line numbers
:set number

" set tab to 4 spaces
filetype plugin indent on
set tabstop=4
set shiftwidth=4
set expandtab

" VUNDLE
set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" VUNDLE
Plugin 'VundleVim/Vundle.vim'

" Plugins
Plugin 'preservim/nerdtree'
Plugin 'morhetz/gruvbox'
Plugin 'godlygeek/tabular'   	  " required for vim-markdown
Plugin 'plasticboy/vim-markdown'  " removes quotation highlighting in markdown

" VUNDLE
call vundle#end()
filetype plugin indent on

" Gruvbox
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
