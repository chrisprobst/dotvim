" be iMproved, required
set nocompatible

" Visual stuff
syntax enable
set ruler
set number
set title

" Key settings
set backspace=indent,eol,start

" Required for vundle
filetype off

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" Nice background theme
Plugin 'chriskempson/base16-vim'

" Golang support
Plugin 'fatih/vim-go'

" Neocomplete
Plugin 'Shougo/neocomplete.vim'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line
"
"

" Set theme
set background=dark
colorscheme base16-ocean

" Neocomplete
let g:neocomplete#enable_at_startup = 1
