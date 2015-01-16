" be iMproved, required
set nocompatible

" Visual stuff
syntax enable
set ruler
set number
set title
set hlsearch

" Key settings
set backspace=indent,eol,start

" We do not need a preview window for completions
:set completeopt=menuone

" Define tab settings
set tabstop=4
set shiftwidth=4
set softtabstop=4

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

" YCM autocompletion
Plugin 'Valloric/YouCompleteMe'

" Golang support
Plugin 'fatih/vim-go'

" Track the engine.
Plugin 'SirVer/ultisnips'

" Snippets are separated from the engine. Add this if you want them:
Plugin 'honza/vim-snippets'

" Auto pairs
Plugin 'Raimondi/delimitMate'

" A cool powerline feature for vim
Plugin 'bling/vim-airline'

" Fuzzy finder
Plugin 'kien/ctrlp.vim'

" The tagbar plugin
Plugin 'majutsushi/tagbar'

" A nice git wrapper
Plugin 'tpope/vim-fugitive'

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

" Setup YCM
let g:ycm_key_list_select_completion = ['<C-n>', '<Down>']
let g:ycm_key_list_previous_completion = ['<C-p>', '<Up>']

" better key bindings for UltiSnipsExpandTrigger
let g:UltiSnipsExpandTrigger = "<tab>"
let g:UltiSnipsJumpForwardTrigger = "<tab>"
let g:UltiSnipsJumpBackwardTrigger = "<s-tab>"

" If you want :UltiSnipsEdit to split your window.
let g:UltiSnipsEditSplit="vertical"

" Enable powerline font
let g:airline_powerline_fonts = 1

" Make sure, the status line is always visible
set laststatus=2
let g:airline#extensions#tabline#enabled = 1

" Setup ctrlp
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'

" Toggle tagbar
nmap <F6> :TagbarToggle<CR>
