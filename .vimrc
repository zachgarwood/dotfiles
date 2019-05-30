" Vundle settings
set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" Vundle plugins and settings
Plugin 'VundleVim/Vundle.vim'

Plugin 'AndrewRadev/switch.vim'

Plugin 'ConradIrwin/vim-bracketed-paste'

Plugin 'Quramy/tsuquyomi'

Plugin 'Shougo/vimproc.vim'

Plugin 'avakhov/vim-yaml'

Plugin 'cakebaker/scss-syntax.vim'

Plugin 'c-brenn/phoenix.vim'
Plugin 'tpope/vim-projectionist'
Plugin 'tpope/vim-dispatch'

Plugin 'dustinfarris/vim-htmlbars-inline-syntax'

Plugin 'elixir-lang/vim-elixir'

Plugin 'evidens/vim-twig'

Plugin 'godlygeek/tabular'
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

Plugin 'hail2u/vim-css3-syntax'

Plugin 'janko-m/vim-test'
let test#strategy = "dispatch"

Plugin 'jelera/vim-javascript-syntax'

Plugin 'klen/python-mode'
let g:pymode_folding = 0
let g:pymode_syntax_indent_errors = 0
let g:pymode_syntax_space_errors = 0
let g:pymode_options_max_line_length = 99
let g:pymode_lint = 0
let g:pymode_rope_autoimport = 0
let g:pymode_rope = 1

Plugin 'leafgarland/typescript-vim'

Plugin 'leshill/vim-json'

Plugin 'mileszs/ack.vim'

Plugin 'mustache/vim-mustache-handlebars'

Plugin 'neomake/neomake'
let g:neomake_elixir_enabled_makers = ['mix', 'dogma']
autocmd! BufWritePost * Neomake

Plugin 'ntpeters/vim-better-whitespace'
autocmd BufWritePre * StripWhitespace

Plugin 'scrooloose/nerdtree'
let NERDTreeShowHidden=1
nnoremap <C-N> :NERDTreeToggle<CR>
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>
Plugin 'Xuyuanp/nerdtree-git-plugin'

Plugin 'scrooloose/syntastic'
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_aggregate_errors = 1
let g:syntastic_error_symbol = '✗'
let g:syntastic_warning_symbol = '⚠'
let g:syntastic_style_error_symbol = '✎'
let g:syntastic_style_warning_symbol = '✎'
let g:syntastic_php_phpcs_args='--standard=PSR2 --ignore="*/tests/*"'
let g:syntastic_python_checkers = ['flake8']

Plugin 'slashmili/alchemist.vim'

Plugin 'tpope/vim-fugitive'

Plugin 'tpope/vim-liquid'

Plugin 'tpope/vim-surround'

Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
set laststatus=2
let g:airline_theme='murmur'
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1

Plugin 'vim-scripts/vim-auto-save'
let g:auto_save = 0
let g:auto_save_in_insert_mode = 0

call vundle#end()
filetype plugin indent on

" personal settings
colorscheme slate
set backspace=indent,eol,start
set expandtab
set ignorecase
set incsearch
set laststatus=2
set nocompatible
nnoremap <F2> :set invpaste paste?<CR>
set pastetoggle=<F2>
set showmode
set shiftwidth=4
set showcmd
set showmode
set smartcase
set smarttab
set smartindent
set tabstop=4
set t_Co=256
set wildmenu
syntax on
autocmd CompleteDone * pclose

" per-language settings
autocmd FileType javascript setlocal tabstop=2 softtabstop=2 shiftwidth=2
autocmd FileType ruby setlocal tabstop=2 softtabstop=2 shiftwidth=2
autocmd FileType liquid setlocal tabstop=2 softtabstop=2 shiftwidth=2
autocmd FileType scss setlocal tabstop=2 softtabstop=2 shiftwidth=2
autocmd FileType typescript setlocal tabstop=2 softtabstop=2 shiftwidth=2
autocmd BufNewFile,BufRead *.jsx set syntax=javascript
autocmd BufNewFile,BufRead *.hbs set syntax=xhtml
autocmd BufNewFile,BufRead *.phtml set syntax=xhtml
autocmd BufRead,BufNewFile *.js HighlightInlineHbs

" testing these settings out
let mapleader=","
set autoindent
set colorcolumn=90
set hidden
set history=100
set lazyredraw
set nowrap
inoremap jk <esc>
nnoremap B ^
nnoremap E $
nnoremap gV `[v`]
nnoremap j gj
nnoremap k gk
