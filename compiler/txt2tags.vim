" Vim Compiler File
" Compiler:      txt2tags
" Homepage:      http://github.com/orel1/vim-txt2tags


if exists('current_compiler')
  finish
endif
let current_compiler = "txt2tags"

if exists(":CompilerSet") != 2 " older Vim always used :setlocal
    command -nargs=* CompilerSet setlocal <args>
endif


"""""""""""""""""""""""""""""
"  Defining default values  "
"""""""""""""""""""""""""""""

if !exists('g:txt2tags_executable')
    " default compiler
    let g:txt2tags_executable = "txt2tags"
endif

if !exists('g:txt2tags_exec_options')
    " default value (understand by txt2tags and pandoc)
    " → We need a '\' to escape spaces in 'makeprg', and we need a '\' to
    " escape '\' (see ':h variables').
    let g:txt2tags_exec_options = "-t\\ html"
endif

if !exists('g:txt2tags_output_ext')
    " default extension
    let g:txt2tags_output_ext = ".html"
endif

if !empty("g:txt2tags_output_ext")
    " understand by txt2tags and pandoc
    let g:txt2tags_exec_options = g:txt2tags_exec_options . '\ -o\ ' . expand("%:r") . g:txt2tags_output_ext
endif


""""""""""""""""""""
"  Compiler setup  "
""""""""""""""""""""

" use the default 'errorformat'
CompilerSet errorformat&

" Define 'makeprg'
if g:txt2tags_executable == 'txt2tags'
    " txt2tags default compiler
    execute 'CompilerSet makeprg=' . g:txt2tags_executable . '\ ' . g:txt2tags_exec_options . '\ %'
elseif g:txt2tags_executable == 'pandoc'
    " pandoc as txt2tags compiler
    execute 'CompilerSet makeprg=' . g:txt2tags_executable . '\ -f\ t2t\ ' . g:txt2tags_exec_options . '\ %'
endif

