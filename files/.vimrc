set nocompatible              " be iMproved, required
filetype off                  " required

filetype plugin indent on
set tabstop=2 shiftwidth=2 expandtab

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" Vundle Bundles
Plugin 'airblade/vim-gitgutter'
Plugin 'fatih/vim-go'
Plugin 'elzr/vim-json'
Plugin 'Shougo/neocomplete.vim'
Plugin 'derekwyatt/vim-scala'
Plugin 'pangloss/vim-javascript'
Plugin 'mxw/vim-jsx'

let g:jsx_ext_required = 0 " Do not require jsx suffix for vim-jsx

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

" http://vim.wikia.com/wiki/Highlight_unwanted_spaces
highlight ExtraWhitespace ctermbg=Gray guibg=red

" Show trailing whitespace:
:match ExtraWhitespace /\s\+$/

highlight OverLength ctermfg=Red guibg=red
:match OverLength /\%81v.*/

let g:gitgutter_enabled = 1
let g:go_fmt_command = "goimports"

autocmd FileType go setlocal ai ts=8 sw=8 noexpandtab
autocmd BufRead,BufNewFile *.md setlocal textwidth=80
autocmd BufRead,BufNewFile *.scala set filetype=scala


set synmaxcol=120

let g:neocomplete#enable_at_startup = 1
let g:neocomplete#enable_smart_case = 1

map <F2> :GitGutterToggle<CR>
set clipboard=unnamedplus
