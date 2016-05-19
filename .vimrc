" Vundle settings
set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" Vundle plugins
Plugin 'VundleVim/Vundle.vim'

Plugin 'AndrewRadev/switch.vim'
Plugin 'ChrisYip/Better-CSS-Syntax-for-Vim'
Plugin 'Xuyuanp/nerdtree-git-plugin'
Plugin 'avakhov/vim-yaml'
Plugin 'elixir-lang/vim-elixir'
Plugin 'evidens/vim-twig'
Plugin 'godlygeek/tabular'
Plugin 'jelera/vim-javascript-syntax'
Plugin 'klen/python-mode'
Plugin 'leshill/vim-json'
Plugin 'mustache/vim-mustache-handlebars'
Plugin 'scrooloose/nerdtree'
Plugin 'scrooloose/syntastic'
Plugin 'tpope/vim-fugitive'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'vim-scripts/vim-auto-save'

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
set smartindent
set tabstop=4
set wildmenu
syntax on

" per-language settings
autocmd FileType javascript setlocal tabstop=2 softtabstop=2 shiftwidth=2
autocmd FileType ruby setlocal tabstop=2 softtabstop=2 shiftwidth=2
autocmd BufNewFile,BufRead *.jsx set syntax=javascript
autocmd BufNewFile,BufRead *.hbs set syntax=xhtml

" Syntastic settings
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_aggregate_errors = 1
let g:syntastic_error_symbol = '✗'
let g:syntastic_warning_symbol = '⚠'
let g:syntastic_style_error_symbol = '✎'
let g:syntastic_style_warning_symbol = '✎'

" PHP
let g:syntastic_php_phpcs_args='--standard=PSR2 --ignore="*/tests/*"'

" Python
let g:syntastic_python_checkers = ['flake8']

" Pymode settings
let g:pymode_folding = 0
let g:pymode_syntax_indent_errors = 0
let g:pymode_syntax_space_errors = 0
let g:pymode_options_max_line_length = 99
let g:pymode_lint = 0
let g:pymode_rope_autoimport = 0
let g:pymode_rope = 1 

autocmd CompleteDone * pclose

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

" Airline settings
let g:airline_powerline_fonts = 0 
let g:airline_theme = 'simple'

" Auto Save settings
let g:auto_save = 0
let g:auto_save_in_insert_mode = 0
