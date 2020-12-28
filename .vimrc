" Use Vim mode instead of pure Vi
set nocompatible

" Plugins will be downloaded under the specified directory
call plug#begin('~/.vim/plugged')
Plug 'arcticicestudio/nord-vim'
call plug#end()

" Display settings
set number " Show line numbers
set ruler " Show the cursor position all the time
set showmatch " Highlight matching braces
set showmode " Show insert/replace/visual mode

" File type specific settings
filetype on " Enable file type detection
filetype plugin on " Load the plugins for specific file types
filetype indent on " Automatically indent code

" Syntax highlighting
colorscheme nord " Set color scheme, must be installed first
set background=dark " Dark background for console
syntax enable " Enable syntax highlighting
