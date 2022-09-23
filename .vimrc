set nocompatible 
filetype on
filetype plugin on
filetype indent on
syntax on
set number
set rnu
set incsearch
set showcmd
set spell
colorscheme desert
autocmd InsertEnter,InsertLeave * set cul!

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'tpope/vim-surround'
Plugin 'yuttie/comfortable-motion.vim'
Plugin 'scrooloose/syntastic'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required


