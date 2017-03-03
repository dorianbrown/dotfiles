"Standard use stuff for VIM"


set nocompatible              " be iMproved, required
filetype off                  " required
set ruler                     " Show line numbers in statusbar
set number                    " Show line numbers in gutter
set ignorecase                " Ignore case when searching
set showmatch                 " Highlight matching brackets
syntax enable                 " Enable syntax highlighting
set ai                        "Auto indent

set nobackup                  " Turn off backups, we got VC
set nowb
set noswapfile

set shiftwidth=4              " 1 tab == 4 spaces
set tabstop=4

" Remap movement keys to normal place

noremap ; l
noremap l k
noremap k j
noremap j h

" Vundle Stuff


" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
" call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" plugin on GitHub repo
Plugin 'tpope/vim-fugitive'

" A great color scheme, especially dark
Plugin 'altercation/vim-colors-solarized'

" Adding REPL behavior
Plugin 'jpalardy/vim-slime'

" Adds the fuzzy-finder and multiple cursors from sublime we all know and love
Plugin 'kien/ctrlp.vim'
Plugin 'terryma/vim-multiple-cursors'

" That sweet R functionality
Bundle 'vim-scripts/Vim-R-plugin'

" Cool statusbar (external dependency on fonts)
Plugin 'bling/vim-airline'

" Look into this once we have Tmux setup
"Plugin 'christoomey/vim-tmux-navigator'

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


" Configuration of Plugins

" Color theme
syntax enable
