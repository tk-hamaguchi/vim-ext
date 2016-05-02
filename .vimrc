set nocompatible
filetype off

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

Bundle 'gmarik/vundle'


Bundle 'vim-coffee-script'
Bundle 'tpope/vim-cucumber'
Bundle 'tk-hamaguchi/vim-ext'
Bundle 'Keithbsmiley/rspec.vim'
Bundle 'mklabs/vim-backbone'
Bundle 'vim-ruby/vim-ruby'
Bundle 'maven-plugin'


filetype plugin indent on

set backspace=start,eol,indent
syntax on
