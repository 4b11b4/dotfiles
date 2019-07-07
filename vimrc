" GENERAL SETTINGS
set nocompatible " nocompatible is set for user vimrcs
filetype off " filetype detection off
set encoding=utf-8


" PLUGINS
set rtp+=~/.vim/bundle/Vundle.vim " set runtime path to include Vundle
call vundle#begin() " initialize Vundle
Plugin 'gmarik/Vundle.vim' " let Vundle manage Vundle
Plugin 'vim-scripts/indentpython.vim' " help with PEP8 indentation
Plugin 'scrooloose/nerdtree' " file tree
Plugin 'tpope/vim-fugitive' " git from vim
Plugin 'Lokaltog/powerline', {'rtp': 'powerline/bindings/vim/'} " status bar
call vundle#end()
filetype plugin indent on

"" NERDTREE
let NERDTreeIgnore=['\.pyc$', '\~$'] "ignore files in NERDTree

" BUFFERS
set clipboard=unnamedplus "lets you copy all over the place


" VISUAL
set number " show line numbers
set relativenumber " relative line numbers
set ruler " show column number?
set cursorline
set showcmd " show (partial) command in status line
set lazyredraw " disable re-drawing during macros (which i don't have)
highlight ColorColumn ctermbg=7
set cc=79 "stop at 78
set showmatch " show matching [], (), {}
syntax on " syntax highlighting
let python_highlight_all = 1
"highlight BadWhitespace ctermbg=red guibg=red
"au BufRead,BufNewFile *.py,*.pyw,*.c,*.h match BadWhitespace /\s\+$/


" EDITING
set backspace=indent,eol,start


" SEARCHING
set incsearch " search as characters are entered
set hlsearch " highlight matches


" FOLDING
"set foldenable
set foldmethod=indent
set foldlevel=99
"set foldlevelstart=10
"set foldnestmax=10
" remap 'za' to spacebar for fold/unfolding
nnoremap <space> za


" INDENTATION
"set tabstop=4 " number of visual spaces for tab
"set softtabstop=4 " number of spaces in tab when editing
"set shiftwidth=4 " number of spaces when using >> or <<
"set autoindent " use current indent for new line
"set expandtab " expand tabs to spaces
au BufNewFile,BufRead *.py set tabstop=4 softtabstop=4 shiftwidth=4 textwidth=79 expandtab autoindent fileformat=unix
