set number " show line numbers
set relativenumber " relative line numbers
set ruler " show column number?
set cursorline
set showcmd " show (partial) command in status line
set clipboard=unnamedplus
set lazyredraw " disable re-drawing during macros (which i don't have)

" SEARCHING
set incsearch " search as characters are entered
set hlsearch " highlight matches

" FOLDING
"set foldenable
"set foldlevelstart=10
"set foldnestmax=10
"set foldmethod=indent

highlight ColorColumn ctermbg=7
set cc=79
syntax on " syntax highlighting
set showmatch " show matching [], (), {}
let python_highlight_all = 1

" INDENTATION
set tabstop=4 " number of visual spaces for tab
set softtabstop=4 " number of spaces in tab when editing
set shiftwidth=4 " number of spaces when using >> or <<
set autoindent " use current indent for new line
set expandtab " expand tabs to spaces
"set smarttab
