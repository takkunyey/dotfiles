" --------- general settings ---------
filetype plugin indent on
set fileencoding=utf-8 encoding=utf-8 fileformat=unix
set ambiwidth=double
set clipboard=unnamed
set ttyfast
set hidden
set list
set nobackup noswapfile nowritebackup
set autoread
set showcmd
set laststatus=2
set ignorecase smartcase
set nrformats= " disable nrformats=octal,hex
set incsearch hlsearch
hi Search ctermbg=Cyan
hi Search ctermfg=Black
set completeopt=menuone,preview pumheight=10
set wrap display=lastline
set backspace=eol,indent,start
set ruler number
set history=500
set wildmenu wildmode=list:full wildignore=*.o,*.obj,*.pyc,*.so,*.dll
set shiftwidth=2 softtabstop=2 tabstop=2 smarttab expandtab
set smartindent autoindent
set showmatch matchtime=1
set undolevels=100
set scrolloff=3

" ----------- key mapping --------- 
let g:mapleader = "\<Space>"

noremap ]b :bnext<CR>
noremap [b :bprev<CR>

nnoremap <Esc><Esc> :nohlsearch<CR><Esc>

cnoremap w!! w !sudo tee > /dev/null %

cnoremap <C-p> <Up>
cnoremap <C-n> <Down>
cnoremap <C-b> <Left>
cnoremap <C-f> <Right>
cnoremap <C-a> <Home>
cnoremap <C-e> <End>
cnoremap <C-d> <Del>
cnoremap <Esc>b <S-Left>
cnoremap <Esc>f <S-Right>

" --------- plugin settings ---------
source ~/dotfiles/vim/plugin.vim
