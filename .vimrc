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
set spellcapcheck=
set cc=80
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
Plugin 'tpope/vim-repeat'
Plugin 'yuttie/comfortable-motion.vim'
Plugin 'scrooloose/syntastic'
Plugin 'scrooloose/nerdtree'
Plugin 'junegunn/limelight.vim'
Plugin 'vim-airline/vim-airline'
Plugin 'junegunn/limelight.vim'
Plugin 'junegunn/fzf'
Plugin 'junegunn/fzf.vim'
" remember to apt-get install silversearcher-ag
" colorscheme plugins
Plugin 'AhmedAbdulrahman/vim-aylin'
Plugin 'catppuccin/vim'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

" NERDTree
" Exit Vim if NERDTree is the only window remaining in the only tab.
autocmd BufEnter * if tabpagenr('$') == 1 && winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() | quit | endif

colorscheme aylin

" spellcheck highlight style
hi clear SpellBad
hi SpellBad cterm=underline ctermfg=red

" syntastic
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
