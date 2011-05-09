" Run as VIM not VI.
set nocompatible

" Rename ~/vimfiles to ~/.vim on Windows
set runtimepath=~/.vim,$VIMRUNTIME,~/.vim/after

" Use pathogen to load plugins from bundle directory
filetype off
call pathogen#runtime_append_all_bundles()
call pathogen#helptags()

" Enable syntax highlighting.
syntax on

" File-type highlighting and configuration.
" Run :filetype (without args) to see what you may have
" to turn on yourself, or just set them all to be sure.
filetype on
filetype plugin on
filetype indent on

set autoindent smartindent

" Set the fold column, so we can use the mouse to open and close folds
set foldcolumn=2

" The width of a TAB is set to 2.
set tabstop=2
" Indents will have a width of 2.
set shiftwidth=2
" Sets the number of columns for a TAB.
set softtabstop=2 

" Show line numbers.
set number

" Do not wrap lines.
set nowrap

" Show matching brackets.
set showmatch

" Bracket blinking.
set mat=5

" Always show status line.
set laststatus=2

" Who needs .gvimrc?
if has("gui_running")
	call togglebg#map("<F5>")
	set encoding=utf-8
	set guifont=Consolas:h15
	" Turn on toolbar
	set guioptions+=T
	" Turn on menu
    set guioptions+=m
end

" Use the solarized theme
set background=dark
colorscheme solarized
