" Packages


" Package Management Commands {{{

command! PackUpdate packadd minpac | source $MYVIMRC | redraw | call minpac#update()
command! PackClean packadd minpac | source $MYVIMRC | call minpac#clean()

" }}}

" Packages {{{

if exists('*minpac#init')
  " minpac is loaded
  call minpac#init()

  " minpac - so it can update itself
  call minpac#add('k-takata/minpac', {'type': 'opt'})

  " general
  call minpac#add('neomake/neomake')
  call minpac#add('shougo/denite.nvim')
  call minpac#add('shougo/deoplete.nvim')
  call minpac#add('tpope/vim-abolish')
  call minpac#add('tpope/vim-commentary')
  call minpac#add('tpope/vim-dadbod')
  call minpac#add('tpope/vim-eunuch')
  call minpac#add('tpope/vim-fugitive')
  call minpac#add('tpope/vim-markdown')
  call minpac#add('tpope/vim-repeat')
  call minpac#add('tpope/vim-surround')
  call minpac#add('tpope/vim-unimpaired')
  call minpac#add('itchyny/lightline.vim')

  " python
  call minpac#add('zchee/deoplete-jedi')
  call minpac#add('vim-python/python-syntax')
  call minpac#add('tmhedberg/SimpylFold')
  call minpac#add('mitsuhiko/vim-jinja')

  " java
  " call minpac#add('artur-shaik/vim-javacomplete2')

  " markdown
  call minpac#add('joker1007/vim-markdown-quote-syntax')

  " web
  call minpac#add('othree/html5.vim')
  call minpac#add('othree/yajs.vim')
  call minpac#add('othree/es.next.syntax.vim')


  " json
  call minpac#add('elzr/vim-json')
  call minpac#add('quramy/vison')

  " freemarker
  call minpac#add('andreshazard/vim-freemarker')

  " rst
  call minpac#add('gu-fan/riv.vim')

  " golang
  call minpac#add('fatih/vim-go')

  " toml
  call minpac#add('cespare/vim-toml')
  call minpac#add('maralla/vim-toml-enhance')


endif

" }}}

" Footer {{{
" vim: fdm=marker ts=2 sts=2 sw=2 et ai si
" }}}
