set nocompatible
set nowrap
set encoding=utf8
set noswapfile

"""" START Vundle Configuration

" Disable file type for vundle
filetype off                  " required

" set the runtime path to include fzf
set rtp+=/usr/bin/fzf

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" Utility
Plugin 'scrooloose/nerdtree'
Plugin 'majutsushi/tagbar'
Plugin 'ervandew/supertab'
"Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'tpope/vim-surround'
Plugin 'tpope/vim-fugitive'
Plugin 'scrooloose/nerdcommenter'
Plugin 'reedes/vim-pencil'
Plugin 'Shougo/neocomplete.vim'
Plugin 'junegunn/fzf.vim'
Plugin 'jremmen/vim-ripgrep'
Plugin 'wincent/ferret'
"Plugin 'airblade/vim-gitgutter'

" Generic Programming Support
"Plugin 'jakedouglas/exuberant-ctags'
Plugin 'vim-syntastic/syntastic'
Plugin 'gabrielelana/vim-markdown'
Plugin 'sheerun/vim-polyglot'

" Theme / Interface
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'

" OSX stupid backspace fix
"set backspace=indent,eol,start

call vundle#end()            " required
filetype plugin indent on    " required
filetype plugin on    " required
"""" END Vundle Configuration

syntax on

"""""""""""""""""""""""""""""""""""""
" Configuration Section
"""""""""""""""""""""""""""""""""""""

" NERDCommenter
let g:NERDSpaceDelims = 1
let g:NERDCompactSexyComs = 1
let g:NERDDefaultAlign = 'left'
let g:NERDCommentEmptyLines = 1


" Show linenumbers
"set number
set ruler

" Set Proper Tabs
set tabstop=2
set softtabstop=2
set shiftwidth=2
set smarttab
set expandtab

set hlsearch
set ignorecase
set smartcase
set showmatch
set ai
set si

set splitbelow
set splitright

" Fixes colorscheme with tmux for some reason
set background=dark

" Max line length
set colorcolumn=80

map <C-n> :NERDTreeToggle<CR>
map <C-t> :TagbarToggle<CR>
map <C-o> :GFiles<CR>
map <C-p> :FZF<CR>

" Strip whitespace from the end of linse
map <leader>s :%s/\s\+$//e<CR>

highlight ExtraWhitespace ctermbg=red guibg=red
match ExtraWhitespace /\s\+$/
