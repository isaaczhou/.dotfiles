" --- General

" set up the leader key as <SPACE>
let mapleader = " "

" enables syntax highlighting
syntax on

" number of spaces in a <Tab>
set tabstop=4
set softtabstop=4
set expandtab

" enable autoindents
set smartindent

" number of spaces used for autoindents
set shiftwidth=4

" adds line numbers
set number
" use relative number
set relativenumber
" columns used for the line number
set numberwidth=4

" highlights the matched text pattern when searching
set incsearch
set nohlsearch

" open splits intuitively
set splitbelow
set splitright

" navigate buffers without losing unsaved work
set hidden

" start scrolling when 8 lines from top or bottom
set scrolloff=8

" Save undo history
set undofile

" Enable mouse support
set mouse=a

" case insensitive search unless capital letters are used
set ignorecase
set smartcase

" --- Plugins

call plug#begin("~/.config/nvim/plugged")
" define your plugins

" Plug 'gruvbox-community/gruvbox'
Plug 'sainnhe/gruvbox-material'

call plug#end()

" --- Colors
set background=dark
set termguicolors
"colorscheme gruvbox
colorscheme gruvbox-material
