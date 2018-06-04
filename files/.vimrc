" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" Comment toggling vim
Plugin 'scrooloose/nerdcommenter'
" plugin on GitHub repo
Plugin 'tpope/vim-fugitive'
" File switching
Plugin 'kien/ctrlp.vim'
" Statusbar
Plugin 'vim-airline/vim-airline'
" Color scheme
Plugin 'morhetz/gruvbox'
" Focus mode (:Goyo)
Plugin 'junegunn/goyo.vim'
" Focus on paragraph
Plugin 'junegunn/limelight.vim'
" Indent guides
Plugin 'nathanaelkane/vim-indent-guides'
" Avoid auto indenting during paste
Plugin 'ConradIrwin/vim-bracketed-paste'
" Adds hex and rgb color highlighting
Plugin 'etdev/vim-hexcolor'

" Language Specific plugins

" Python autocomplete for vim
Plugin 'maralla/completor.vim'
" Rmarkdown stuff
Plugin 'vim-pandoc/vim-rmarkdown'
Plugin 'vim-pandoc/vim-pandoc-syntax'
Plugin 'vim-pandoc/vim-pandoc'

call vundle#end()

filetype plugin indent on
set t_Co=256
set t_ut= " Solve tmux background color weirdness
set background=dark
colorscheme gruvbox

" vim-rmarkdown options
let g:pandoc#modules#disabled = ["folding"]
" let g:pandoc#syntax#conceal#use=0

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
set noruler
set number relativenumber
" CtrlP binding
let g:ctrlp_map = '<c-p>'
" Remove backup and swap files
set nobackup
set nowb
set noswapfile
set showcmd
set incsearch

" Set split directions to sensical defaults
set splitbelow
set splitright

" Netrw (filebrowser) options
let g:netrw_banner=0
let g:netrw_altv=1  " splits to right
let g:netrw_liststyle=3  " tree view

" 1 tab == 4 spaces
set shiftwidth=4
set softtabstop=4

set ai " Auto indent
set si " Smart indent
set textwidth=0 wrapmargin=0
" modern backspace behavior
set backspace=indent,eol,start
filetype indent on

" Limelight
let g:limelight_conceal_ctermfg = 240

" Filetype specific settings
augroup filetypedetect
    au BufRead,BufNewFile *.Rmd set filetype=rmarkdown
    " associate *.foo with php filetype
augroup END
