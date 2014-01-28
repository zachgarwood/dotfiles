" personal settings
syntax on
colorscheme slate
set expandtab
set tabstop=4
set shiftwidth=4
set backspace=indent,eol,start
set incsearch
set ignorecase
set smartcase
set wildmenu
set laststatus=2
set showcmd
set pastetoggle=<F2>
set showmode

" Vundle settings
set nocompatible
filetype off
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" bundles
Bundle 'ChrisYip/Better-CSS-Syntax-for-Vim'
Bundle 'gmarik/vundle'
Bundle 'godlygeek/tabular'
Bundle 'leshill/vim-json'
Bundle 'lukaszb/vim-web-indent'
Bundle 'spf13/PIV'
Bundle 'scrooloose/nerdtree'
Bundle 'scrooloose/syntastic'
Bundle 'Townk/vim-autoclose'
Bundle 'tpope/vim-fugitive'

filetype plugin indent on
