" Vundle settings
set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" Vundle plugins
Plugin 'Townk/vim-autoclose'
Plugin 'avakhov/vim-yaml'
Plugin 'elixir-lang/vim-elixir'
Plugin 'evidens/vim-twig'
Plugin 'gmarik/Vundle.vim'
Plugin 'godlygeek/tabular'
Plugin 'jelera/vim-javascript-syntax'
Plugin 'kien/ctrlp.vim'
Plugin 'klen/python-mode'
Plugin 'leshill/vim-json'
Plugin 'lukaszb/vim-web-indent'
Plugin 'mustache/vim-mustache-handlebars'
Plugin 'scrooloose/nerdtree'
Plugin 'scrooloose/syntastic'
Plugin 'tpope/vim-fugitive'

call vundle#end()
filetype plugin indent on

" personal settings
colorscheme slate
filetype plugin indent on
set backspace=indent,eol,start
set expandtab
set ignorecase
set incsearch
set laststatus=2
set nocompatible
set pastetoggle=<F2>
set shiftwidth=4
set showcmd
set showmode
set smartcase
set smarttab
set tabstop=4
set wildmenu
syntax on

" per-language settings
autocmd BufNewFile,BufRead *.jsx set syntax=javascript
autocmd FileType javascript setlocal tabstop=2 softtabstop=2 shiftwidth=2

" PHP CodeSniffer / Syntastic settings
let g:syntastic_php_phpcs_args='--standard=PSR2 --ignore="*/tests/*"'

" Pymode settings
let g:pymode_folding = 0
let g:pymode_indent = 1
let g:pymode_lint = 1
let g:pymode_lint_checkers = ['pep8']
let g:pymode_lint_message = 1
let g:pymode_lint_on_write = 1
let g:pymode_syntax = 1
let g:pymode_syntax_all = 1
let g:pymode_trim_whitespaces = 1
let g:pymode_virtualenv = 1

" Tabularize settings
inoremap <silent> <Bar>   <Bar><Esc>:call <SID>align()<CR>a

function! s:align()
  let p = '^\s*|\s.*\s|\s*$'
  if exists(':Tabularize') && getline('.') =~# '^\s*|' && (getline(line('.')-1) =~# p || getline(line('.')+1) =~# p)
    let column = strlen(substitute(getline('.')[0:col('.')],'[^|]','','g'))
    let position = strlen(matchstr(getline('.')[0:col('.')],'.*|\s*\zs.*'))
    Tabularize/|/l1
    normal! 0
    call search(repeat('[^|]*|',column).'\s\{-\}'.repeat('.',position),'ce',line('.'))
  endif
endfunction
