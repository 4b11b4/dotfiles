" GENERAL SETTINGS
set nocompatible " nocompatible is set for user vimrcs
filetype off " filetype detection off
set encoding=utf-8


" PLUGINS
set rtp+=~/.vim/bundle/Vundle.vim " set runtime path to include Vundle
call vundle#begin() " initialize Vundle
Plugin 'gmarik/Vundle.vim' " let Vundle manage Vundle
Plugin 'tmhedberg/SimpylFold' " help with folding
Plugin 'vim-scripts/indentpython.vim' " help with PEP8 indentation
Plugin 'altercation/vim-colors-solarized' " colors
Plugin 'scrooloose/nerdtree' " file tree
Plugin 'tpope/vim-fugitive' " git from vim
Plugin 'Lokaltog/powerline', {'rtp': 'powerline/bindings/vim/'} " status bar
call vundle#end()
filetype plugin indent on


" PLUGIN SETTINGS
"" YOUCOMPLETEME
let g:ycm_autoclose_preview_window_after_completion=1 " hide autocmp after use
" shortcut for goto definition
" note: My leader key is mapped to space, so space-g will goto definition of whatever I’m currently on. That’s helpful when I’m exploring new code.
map <leader>g  :YcmCompleter GoToDefinitionElseDeclaration<CR>
" Python with virtualenv support
" make YouCompleteMe aware of virtualenv
py << EOF
import os
import sys
if 'VIRTUAL_ENV' in os.environ:
  project_base_dir = os.environ['VIRTUAL_ENV']
  activate_this = os.path.join(project_base_dir, 'bin/activate_this.py')
  execfile(activate_this, dict(__file__=activate_this))
EOF

"" SIMPYLFOLD
let g:SimpylFold_docstring_preview=1

"" SOLARIZED
" toggle light/dark
"call togglebg#map("<F5>")

"" NERDTREE
let NERDTreeIgnore=['\.pyc$', '\~$'] "ignore files in NERDTree

" BUFFERS
set clipboard=unnamedplus


" VISUAL
set number " show line numbers
set relativenumber " relative line numbers
set ruler " show column number?
set cursorline
set showcmd " show (partial) command in status line
set lazyredraw " disable re-drawing during macros (which i don't have)
highlight ColorColumn ctermbg=7
set cc=79
set showmatch " show matching [], (), {}
syntax on " syntax highlighting
let python_highlight_all = 1
au BufRead,BufNewFile *.py,*.pyw,*.c,*.h match BadWhitespace /\s\+$/


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
au BufNewFile,BufRead *.py
    \ set tabstop=4
    \ set softtabstop=4
    \ set shiftwidth=4
    \ set textwidth=79
    \ set expandtab
    \ set autoindent
    \ set fileformat=unix

au BufNewFile,BufRead *.js, *.html, *.css
    \ set tabstop=2
    \ set softtabstop=2
    \ set shiftwidth=2
