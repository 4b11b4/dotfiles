set number " show line numbers
set relativenumber " relative line numbers
set ruler " show column number?
set showcmd " show (partial) command in status line
set clipboard=unnamedplus

highlight ColorColumn ctermbg=7
set cc=80
syntax on " syntax highlighting
set showmatch " show matching [], (), {}
let python_highlight_all = 1

" tab settings hardcoded for python
set tabstop=4 " use 4 spaces for a tab
set shiftwidth=4 " number of spaces when using >> or <<
set autoindent " use current indent for new line
set expandtab " expand tabs to spaces
"set smarttab
"set softtabstop=4
