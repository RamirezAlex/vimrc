syntax enable

" UI Theme
if has('gui_running')
    set background=light
else
    set background=dark
endif

let g:solarized_termcolors=256
"colorscheme solarized
"colorscheme guardian
"colorscheme distinguished
colorscheme vividchalk

" Tab Spacing
set tabstop=2
set softtabstop=2
set expandtab

" UI Config
set number
set showcmd
"set cursorline

" Searching
set incsearch
set hlsearch

" Pathogen
execute pathogen#infect()
filetype plugin indent on

" JavaScript Autocomplete
autocmd FileType javascript set omnifunc=javascriptcomplete#CompleteJS

" HTML Autocomplete
autocmd FileType html set omnifunc=htmlcomplete#CompleteTags

" PHP Autocomplete
autocmd FileType php set omnifunc=phpcomplete#CompletePHP

" CSS Autocomplete
autocmd FileType css setl omnifunc=csscomplete#CompleteCSS

" JSON Highlighting
au BufRead,BufNewFile *.json set filetype=json
au! Syntax json source /Users/Alex/.vim/ftplugin/json.vim

" JSHINT
set runtimepath+=~/.vim/bundle/jshint2.vim/

" UTF-8 Encoding
set enc=utf-8
set fileencoding=utf-8
set fileencodings=ucs-bom,utf8,prc
set guifont=Monaco:h11
set guifontwide=NSimsun:h12

" Vundle.vim
set nocompatible 
" filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" NERDTree
Plugin 'scrooloose/nerdtree'

" CtrlP
Plugin 'https://github.com/ctrlpvim/ctrlp.vim'
let g:ctrlp_custom_ignore = 'node_modules\|DS_Store\|git'

call vundle#end()           
