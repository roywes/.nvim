" Neovim Configuration by Roy Wesonga
" If you are using this configuration, use Space to toggle section folds

let $MYVIMDIR = expand('<sfile>:p:h')
source $MYVIMDIR/packages.vim

" Functions {{{
function! s:CreateNonExistentFolder(file, buf)
    " adapted from https://stackoverflow.com/a/4294176
    if empty(getbufvar(a:buf, '&buftype')) && a:file!~#'\v^\w+\:\/'
        let dir=fnamemodify(a:file, ':h')
        if !isdirectory(dir)
            call mkdir(dir, 'p')
        endif
    endif
endfunction
" }}}

" General {{{
colorscheme desert
syntax on
filetype plugin indent on
" }}}

" Visual Customization {{{

" Cursorline: enable
set cursorline

" " Cursorline: almost black current line highlight
" hi CursorLine cterm=None ctermbg=234 ctermfg=None

" VertalSplit: use char without gaps
set fillchars+=vert:\│

" VertalSplit: disable default highlight in console
hi VertSplit cterm=None

" Diffmode: sensible highlights
hi DiffAdd      cterm=bold ctermfg=11 ctermbg=8 gui=none guifg=bg guibg=red
hi DiffDelete   cterm=bold ctermfg=01 ctermbg=8 gui=none guifg=bg guibg=red
hi DiffChange   cterm=bold ctermfg=15 ctermbg=8 gui=none guifg=bg guibg=red
hi DiffText     cterm=bold ctermfg=11 ctermbg=8 gui=none guifg=bg guibg=red

" " ColorColumn:
" hi ColorColumn ctermbg=234 guibg=none

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

" -- Open LocationList in vertical split
noremap <leader>c :<c-u>only<cr>:vert lopen<cr><c-w>=

" -- Open QuickList in vertical split
noremap <leader>cc :<c-u>only<cr>:vert copen<cr><c-w>=

" -- Close other windows
noremap <leader>o :<c-u>only<cr>

" -- Toggle Search Highlight
nnoremap <leader>h :<c-u>set hlsearch!<cr>

" -- Toggle Line Number
noremap <leader>n :<c-u>set nu!<cr>

" -- Toggle Invisible Character
noremap <leader>l :<c-u>set list!<cr>

" -- Split vertically into a terminal session
noremap <leader>t :<c-u>vsp term://bash<cr>i

" -- Toggle Folds
nnoremap <space> za
vnoremap <space> za

" -- Keep selection on indent
vnoremap > >gv
vnoremap < <gv

" -- Denite: list files
nnoremap <leader>f :<c-u>Denite -split=no file_rec<cr>

" -- Denite: list open files
nnoremap <leader>b :<c-u>Denite -split=no -mode=normal buffer<cr>

" -- Denite: search in files
nnoremap <leader>g :<c-u>Denite grep<cr>

" }}}

" Other Settings {{{
set inccommand=nosplit
set belloff=all

set mouse=a

set tabstop=4
set softtabstop=4
set shiftwidth=4
set autoindent
set smartindent
set noshowmode

set completeopt-=preview
set pastetoggle=<F7>

" let &colorcolumn="80,".join(range(100,999),",")

" }}}

" Event Handlers {{{
augroup OnWriteCreateParentDirs
    autocmd!
    au BufWritePre * :call s:CreateNonExistentFolder(expand('<afile>'), +expand('<abuf>'))
augroup END
" }}}

" Plugin Configuration {{{

" Python: {{{

" Enable all highlighting
let g:python_highlight_all = 1

" Use system python as provider. Allows adding venvs to path
let g:python3_host_prog = '/usr/bin/python'

" }}}

" Neovim: {{{

" Python: Disable Python 2 support
 let g:loaded_python_provider = 1

" Netrw: Use tree view by default
let g:netrw_liststyle = 3

" Netrw: Remove the banner for more minimalist view
let g:netrw_banner = 0

" }}}

" Deoplete: {{{

" Deoplete: enable
let g:deoplete#enable_at_startup = 1

  \ "sh": {
  \   "start": "\\%(sh\\|bash\\)",
  \ },
\}

" }}}

" Neomake: {{{

" mvn - use package instead of install
let g:neomake_mvn_args=['compile']

" }}}

" Lightline: {{{

" show git branch
let g:lightline = {
\ 'active': {
\   'left': [ [ 'mode', 'paste' ],[ 'gitbranch', 'readonly', 'filename', 'modified' ] ]
\ },
\ 'component_function': {
\   'gitbranch': 'fugitive#head'
\ },
\}

" }}}

" }}}

" Filetype settings {{{
autocmd FileType rst setlocal spell
" }}}

" Footer {{{
" vim: fdm=marker ts=4 sts=4 sw=4 et ai si
"}}}
