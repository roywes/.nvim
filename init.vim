" Neovim Config by Roy Wesonga
" If already using this config, use space to toggle the folds

" Plugin Manager (dein.vim) Settings {{{

let $VIMHOMEDIR = expand("<sfile>:p:h")
let s:plugin_dir = expand("$VIMHOMEDIR/dein")
let s:dein_dir = expand("$VIMHOMEDIR/dein/repos/github.com/Shougo/dein.vim")

let &rtp.= ',' . s:dein_dir

call dein#begin(s:plugin_dir)

call dein#add('Shougo/dein.vim')
call dein#add('Shougo/denite.nvim')
call dein#add('Shougo/deoplete.nvim')

call dein#add('tpope/vim-sensible')
call dein#add('tpope/vim-unimpaired')
call dein#add('tpope/vim-surround')
call dein#add('tpope/vim-commentary')
call dein#add('tpope/vim-repeat')

call dein#add('itchyny/lightline.vim')

call dein#end()

" }}}

" General {{{
colorscheme desert

" }}}

" Settings {{{
set belloff=all

let mapleader = ","

" }}}

" Mappings {{{

" Better Split Navigation
noremap <c-h> <c-w><c-h>
noremap <c-j> <c-w><c-j>
noremap <c-k> <c-w><c-k>
noremap <c-l> <c-w><c-l>

" Split Operations
nnoremap <leader>o :only<cr>
nnoremap <leader>v :vsplit<cr>

" Smash Escape
inoremap jj <esc>
inoremap jk <esc>
inoremap kk <esc>
inoremap kj <esc>

" Space to toggle folds
vnoremap <space> za
nnoremap <space> za

" }}}

" Plugin Configuration {{{

let g:lightline = {
	\ 'component': {
	\	'readonly': '%{&readonly?"⦸":""}',
	\ }}

" }}}

" Footer {{{
" vim: foldmethod=marker
" }}}
