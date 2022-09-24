set nocompatible 
filetype on
filetype plugin on
filetype indent on
syntax on

" preference
set number
set rnu
set incsearch
set showcmd
set spell
set autoindent
set termguicolors
set ignorecase
set smartcase
autocmd InsertEnter,InsertLeave * set cul!

" markdown tab sizes (there must be a better way)
autocmd BufNewfile,BufRead *.md set shiftwidth=2
autocmd BufNewfile,BufRead *.md set tabstop=2

" fuzzy file search
set path+=**
set wildmenu

" vundle stuff
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'tpope/vim-surround'
Plugin 'yuttie/comfortable-motion.vim'
Plugin 'scrooloose/syntastic'
Plugin 'scrooloose/nerdtree'
Plugin 'vim-airline/vim-airline'
Plugin 'junegunn/fzf'
Plugin 'junegunn/fzf.vim'
" themes plugins
Plugin 'AhmedAbdulrahman/vim-aylin'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

" NERDTree
" Start NERDTree. If a file is specified, move the cursor to its window.
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * NERDTree | if argc() > 0 || exists("s:std_in") | wincmd p | endif
" Exit Vim if NERDTree is the only window remaining in the only tab.
autocmd BufEnter * if tabpagenr('$') == 1 && winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() | quit | endif

colorscheme aylin

" spellcheck highlight style
hi clear SpellBad
hi SpellBad cterm=underline ctermfg=red
