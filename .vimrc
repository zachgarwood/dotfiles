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
filetype plugin indent on
set pastetoggle=<F2>
set showmode

" remove trailing whitespaces on write
function! StripTrailingWhitespaces()
    let l = line(".")
    let c = col(".")
    %s/\s\+$//e
    call cursor(l, c)
endfun
autocmd BufWritePre *.php :call StripTrailingWhitespaces()
