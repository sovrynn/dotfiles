" enable syntax highlighting
syntax on

" leader shortcuts
:let mapleader = " "
nmap <leader>nt :NERDTree<ENTER>

" word wrapping
:set wrap

" line numbers
:set number

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
