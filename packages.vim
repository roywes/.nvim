command! PackUpdate packadd minpac | source $MYVIMRC | redraw | call minpac#update()
command! PackClean packadd minpac | source $MYVIMRC | call minpac#clean()

packadd minpac
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

" python
call minpac#add('zchee/deoplete-jedi')

" java
call minpac#add('artur-shaik/vim-javacomplete2')

" markdown
call minpac#add('joker1007/vim-markdown-quote-syntax')

" json
call minpac#add('elzr/vim-json')
call minpac#add('quramy/vison')

" freemarker
call minpac#add('andreshazard/vim-freemarker')

" rst
call minpac#add('gu-fan/riv.vim')

" golang
call minpac#add('fatih/vim-go')
