" Vim filetype plugin file
" Language:      txt2tags
" Homepage:      http://github.com/orel1/vim-txt2tags


" Prevents running the plugin again if it's not necessary and gives the user
" the ability to disable it.
if exists("b:did_ftplugin")
  finish
endif
let b:did_ftplugin = 1


"""""""""""""""""""""""""""""
"  Defining default values  "
"""""""""""""""""""""""""""""

" Enable/Disable 'foldmethod=syntax' (default is disable)
if !exists('g:txt2tags_fold_enable')
    let g:txt2tags_fold_enable = 0
endif

" Fold *every* subtitle area (default is disable)
if !exists('g:txt2tags_fold_every_subtitle')
    let g:txt2tags_fold_every_subtitle = 0
endif

" Highlight trailing whitespaces (default is enable)
if !exists('g:txt2tags_trailing_whitespaces')
    let g:txt2tags_trailing_whitespaces = 1
endif


"""""""""""""
"  Options  "
"""""""""""""

setlocal textwidth=80
setlocal ts=2 sw=2 expandtab smarttab

if g:txt2tags_fold_enable
    setlocal foldmethod=syntax
endif

