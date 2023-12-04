set nocompatible
filetype on
filetype plugin on
filetype indent on
syntax on

set path+=**
set tags=./tags,tags;
set wildmenu
ab vsf vert sf
ab csf scope find

set number
set rnu
set incsearch
set showcmd

set autoindent
set tabstop=4
set shiftwidth=4
set expandtab
set linebreak

set ignorecase
set smartcase

set statusline=0x%B
set statusline+=\ %c
set statusline+=%=%F
set laststatus=2

nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-H> <C-W><C-H>
nnoremap <C-L> <C-W><C-L>
set splitbelow
set splitright

au BufNewfile,BufRead *.md set shiftwidth=2
au BufNewfile,BufRead *.md set tabstop=2

au VimEnter,colorscheme * hi StatusLine ctermbg=white ctermfg=135

colorscheme evening
if exists('&termguicolors')
    set termguicolors
else
    colorscheme slate
endif

if !empty(glob("~/.vim/bundle/Vundle.vim"))
    set rtp+=~/.vim/bundle/Vundle.vim
    call vundle#begin()
    Plugin 'VundleVim/Vundle.vim'
    Plugin 'tpope/vim-surround'
    Plugin 'tpope/vim-repeat'
    call vundle#end()
    filetype plugin indent on
endif
