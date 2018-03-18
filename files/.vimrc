" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" plugin on GitHub repo
Plugin 'tpope/vim-fugitive'
" File switching
Plugin 'kien/ctrlp.vim'
" Color scheme
Plugin 'morhetz/gruvbox'
" Focus mode (:Goyo)
Plugin 'junegunn/goyo.vim'
" Indent guides
Plugin 'nathanaelkane/vim-indent-guides'
" Nerd tree
Plugin 'scrooloose/nerdtree'

" Language Specific plugins
" Python autocomplete for vim
Plugin 'davidhalter/jedi-vim'
" Rmarkdown stuff
Plugin 'vim-pandoc/vim-rmarkdown'
Plugin 'vim-pandoc/vim-pandoc-syntax'
Plugin 'vim-pandoc/vim-pandoc'

call vundle#end()            " required

filetype plugin indent on    " required
set t_Co=256
set t_ut= " Solve tmux background color weirdness
set background=dark
colorscheme gruvbox

" vim-rmarkdown options
let g:pandoc#modules#disabled = ["folding"]

" Proper python indentation
set tabstop=4
set softtabstop=4
set shiftwidth=4
set textwidth=79
set expandtab
set autoindent
set fileformat=unix
" Proper encodings
set encoding=utf-8
" syntax highlighting
let python_highlight_all=1
syntax on
" Line numbering
" set noruler
" set number
" CtrlP binding
let g:ctrlp_map = '<c-p>'
" Remove backup and swap files
set nobackup
set nowb
set noswapfile

" 1 tab == 4 spaces
set shiftwidth=4
set softtabstop=4

set ai " Auto indent
set si " Smart indent
" modern backspace behavior
set backspace=indent,eol,start
filetype indent on
" Highlight current line
set cursorline

" Filetype specific settings
augroup filetypedetect
    au BufRead,BufNewFile *.Rmd set filetype=rmarkdown
    " associate *.foo with php filetype
augroup END
