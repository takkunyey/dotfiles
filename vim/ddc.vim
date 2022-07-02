call ddc#custom#patch_global('sourceOptions', {
      \ '_': {
      \   'matchers': ['matcher_head'],
      \   'sorters': ['sorter_rank']},
      \ })

" Change source options
call ddc#custom#patch_global('sourceOptions', {
      \ 'around': {'mark': 'A'},
      \ })
call ddc#custom#patch_global('sourceParams', {
      \ 'around': {'maxSize': 500},
      \ })

" Customize settings on a filetype
call ddc#custom#patch_filetype(['c', 'cpp'], 'sources', ['around', 'clangd'])
call ddc#custom#patch_filetype(['c', 'cpp'], 'sourceOptions', {
      \ 'clangd': {'mark': 'C'},
      \ })
call ddc#custom#patch_filetype('markdown', 'sourceParams', {
      \ 'around': {'maxSize': 100},
      \ })

" Mappings

" <TAB>: completion.
inoremap <silent><expr> <TAB>
\ ddc#map#pum_visible() ? '<C-n>' :
\ (col('.') <= 1 <Bar><Bar> getline('.')[col('.') - 2] =~# '\s') ?
\ '<TAB>' : ddc#map#manual_complete()

" <S-TAB>: completion back.
inoremap <expr><S-TAB>  ddc#map#pum_visible() ? '<C-p>' : '<C-h>'

call ddc#custom#patch_global('sources', ['vim-lsp'])
call ddc#custom#patch_global('sourceOptions', {
  \ 'vim-lsp': {
  \   'matchers': ['matcher_head'],
  \   'mark': 'lsp',
  \ },
  \ })

" if you want to use the unsupported CompleteProvider Server,
" set true by'ignoreCompleteProvider'.
call ddc#custom#patch_filetype(['css'], {
  \ 'sourceParams': {
  \   'vim-lsp': {
  \     'ignoreCompleteProvider': v:true,
  \   },
  \ },
  \ })

" Use ddc.
call ddc#enable()


