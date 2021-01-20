call plug#begin('~/.vim/plugged')

Plug 'itchyny/lightline.vim'
Plug 'joshdick/onedark.vim'
Plug 'flazz/vim-colorschemes'
Plug 'mhartington/oceanic-next'
Plug 'zeis/vim-kolor'
Plug 'nathanaelkane/vim-indent-guides'
Plug 'morhetz/gruvbox'
Plug 'Shougo/deoplete.nvim'
Plug 'roxma/nvim-yarp'
Plug 'roxma/vim-hug-neovim-rpc'
Plug 'rip-rip/clang_complete'
Plug 'maralla/completor.vim'
Plug 'nanotech/jellybeans.vim'
Plug 'dreadnaut/vim-bargreybars'
Plug 'jonathanfilip/vim-lucius'

call plug#end()

syntax on 
let g:oceanic_next_terminal_bold = 1
let g:oceanic_next_terminal_italic = 1
let g:indent_guides_start_level = 2
let g:bargreybars_auto = 1
colorscheme jellybeans 

set nu
set nowrap
set noshowmode
set laststatus=2
set smartcase
set noswapfile
set incsearch
set autoindent
set shiftwidth=4
set smartindent
set smarttab
set tabstop=4
set softtabstop=4

let g:completor_clang_binary = '/usr/bin/clang'

let g:bargreybars_auto = 1

let g:lightline = {
  \ 'colorscheme': 'jellybeans',
  \ }

if !has('gui_running')
  set t_Co=256
endif

let &t_ut=''
