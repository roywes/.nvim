" Denite: Use ag command for listing files
call denite#custom#var('file_rec', 'command',
    \ ['ag', '--follow', '--nocolor', '--nogroup', '-g', ''])

" Denite: Use ag command for searching files
call denite#custom#var('grep', 'command', ['ag'])
call denite#custom#var('grep', 'default_opts', ['-i', '--vimgrep'])
call denite#custom#var('grep', 'recursive_opts', [])
call denite#custom#var('grep', 'pattern_opt', [])
call denite#custom#var('grep', 'separator', ['--'])
call denite#custom#var('grep', 'final_opts', [])

" Denite: Use <c-j> for line up in insert mode
call denite#custom#map(
      \ 'insert',
      \ '<c-j>',
      \ '<denite:move_to_next_line>',
      \ 'noremap'
      \)

" Denite: Use <c-k> for line up in insert mode
call denite#custom#map(
      \ 'insert',
      \ '<c-k>',
      \ '<denite:move_to_previous_line>',
      \ 'noremap'
\)

" }}}

" Footer {{{
" vim: fdm=marker ts=4 sts=4 sw=4 et ai si
" }}}
