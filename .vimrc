packadd minpac

call minpac#init()

" minpac must have {'type': 'opt'} so that it can be loaded with `packadd`.
call minpac#add('k-takata/minpac', {'type': 'opt'})

" Add other plugins here.
call minpac#add('vim-airline/vim-airline')
call minpac#add('ctrlpvim/ctrlp.vim')
call minpac#add('scrooloose/nerdtree')
call minpac#add('vim-airline/vim-airline-themes')
call minpac#add('flazz/vim-colorschemes')
call minpac#add('scrooloose/nerdcommenter')
call minpac#add('nathanaelkane/vim-indent-guides')
call minpac#add('w0rp/ale')

set background=dark
" Enable completion where available.
let g:ale_completion_enabled = 1
let g:indent_guides_enable_on_vim_startup = 1

let g:airline_theme='luna'
let g:airline_powerline_fonts = 1
" Load the plugins right now. (optional)
"packloadall
syntax on
colorscheme molokai
