set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" Vundle Bundles
Bundle 'airblade/vim-gitgutter'
Bundle 'fatih/vim-go'
Bundle 'elzr/vim-json'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

highlight OverLength ctermfg=Gray guibg=#FFD9D9
match OverLength /\%101v.*/

let g:gitgutter_enabled = 1
"autocmd FileType go autocmd BufWritePre <buffer> Fmt

set tabstop=2
set shiftwidth=2
set expandtab

autocmd FileType go setlocal ai ts=8 sw=8 noexpandtab

set synmaxcol=120

