
call plug#begin()

Plug 'tpope/vim-surround'
Plug 'junegunn/vim-easy-align'

let g:polyglot_disabled = ['markdown', 'csv', 'javascript']
Plug 'sheerun/vim-polyglot'
Plug 'vim-scripts/bats.vim'
Plug 'mechatroner/rainbow_csv'

Plug 'honza/vim-snippets'

Plug 'junegunn/goyo.vim', { 'for': 'markdown' }

" Plug 'neoclide/coc.nvim', {'branch': 'release'}

Plug 'prabirshrestha/vim-lsp'
Plug 'mattn/vim-lsp-settings'

Plug 'Shougo/ddc.vim'
Plug 'vim-denops/denops.vim'
Plug 'Shougo/ddc-matcher_head'
Plug 'Shougo/ddc-sorter_rank'
Plug 'shun/ddc-vim-lsp'

Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'

call plug#end()

" Start interactive EasyAlign in visual mode (e.g. vipga)
xmap ga <Plug>(EasyAlign)
" Start interactive EasyAlign for a motion/text object (e.g. gaip)
nmap ga <Plug>(EasyAlign)


au BufRead,BufNewFile *.sbt set filetype=scala
autocmd vimrc FileType json syntax match Comment +\/\/.\+$+

" source $HOME/dotfiles/vim/coc.vim
source $HOME/dotfiles/vim/ddc.vim
source $HOME/dotfiles/vim/fzf.vim

