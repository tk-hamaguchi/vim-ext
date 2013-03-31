" Vundle
set nocompatible
filetype off
set rtp+=~/.vim/bundle/vundle
call vundle#rc()

" Vundle本体
Bundle 'sgur/vundle'

" 利用中のプラグインをBundle
Bundle 'vim-coffee-script'

Bundle 'ext'


filetype plugin indent on
