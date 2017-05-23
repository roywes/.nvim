" Preamble {{{
" Neovim Configuration
"   - Roy Wesonga
" }}}

" Plugins {{{

runtime bundle/vim-pathogen/autoload/pathogen.vim

" an ode to tpope
execute pathogen#interpose('bundle/vim-commentary')
execute pathogen#interpose('bundle/vim-repeat')
execute pathogen#interpose('bundle/vim-surround')
execute pathogen#interpose('bundle/vim-unimpaired')
execute pathogen#interpose('bundle/vim-abolish')

" 
execute pathogen#interpose('bundle/deoplete.nvim')
execute pathogen#interpose('bundle/denite.nvim')

" python focused plugins
execute pathogen#interpose('bundle/jedi')
execute pathogen#interpose('bundle/deoplete-jedi')

" 
execute pathogen#interpose('bundle/neomake')

execute pathogen#interpose('bundle/lightline.vim')
execute pathogen#interpose('bundle/tmuxline.vim')
" }}}

" General {{{
colorscheme slate
" }}}

" Colors {{{
hi VertSplit ctermbg=black ctermfg=black
" }}}

" Key Mappings {{{

" -- Leader
let mapleader = ","

" -- Smash escape
inoremap jk <esc>
inoremap kj <esc>

" -- Pane Navigation
nnoremap <c-h> <c-w><c-h>
nnoremap <c-j> <c-w><c-j>
nnoremap <c-k> <c-w><c-k>
nnoremap <c-l> <c-w><c-l>

" -- Split vertically
noremap <leader>v :<c-u>vsp<cr>

" -- Close other windows
noremap <leader>o :<c-u>only<cr>

" -- Toggle Search Highlight
nnoremap <leader>h :<c-u>set hlsearch!<cr>

" -- Toggle Line Number
noremap <leader>n :<c-u>set nu!<cr>

" -- Toggle Invisible Character
noremap <leader>l :<c-u>set list!<cr>

" -- Toggle Folds
nnoremap <space> za
vnoremap <space> za

" -- Keep selection on indent
vnoremap > >gv
vnoremap < <gv

" -- Denite: list files
nnoremap <leader>f :<c-u>Denite file_rec<cr>

" -- Denite: list open files
nnoremap <leader>b :<c-u>Denite -mode=normal buffer<cr>

" -- Denite: search in files
nnoremap <leader>g :<c-u>Denite grep<cr>

" }}}

" Plugin Configuration {{{

" Neovim: Disable Python 2 support
let g:loaded_python_provider = 1

" Neovim: Point Python 3 interpreter to virtual env
let g:python3_host_prog = '~/.config/nvim/venv/bin/python3'

" Netrw: Use tree view by default
let g:netrw_liststyle = 3

" Netrw: Remove the banner for more minimalist view
let g:netrw_banner = 0

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
