set nocompatible
set ignorecase
set incsearch
set smartcase
set showmatch
set showcmd
set ruler

syntax on

set nobackup
set nowritebackup
set textwidth=79
set tabstop=2
set shiftwidth=2
set cindent
set autoindent
set smarttab
set expandtab
set backspace=indent,eol,start

filetype on
filetype indent on
filetype plugin on

autocmd Filetype gitcommit set textwidth=68 spell
autocmd FileType ruby set shiftwidth=2
autocmd FileType c set shiftwidth=8 tabstop=8 noexpandtab

" don't use cindent for javascript
autocmd FileType javascript setlocal nocindent

autocmd BufWritePre * :%s/\s\+$//e

set grepprg=ack
set grepformat=%f:%l:%m
