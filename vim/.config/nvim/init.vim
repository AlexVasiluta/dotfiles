" set runtimepath^=~/.vim runtimepath+=~/.vim/after
" let &packpath=&runtimepath
" source ~/.vimrc

set nocompatible

call plug#begin()

Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

" Airline config
let g:airline_theme='dark'
autocmd VimEnter * AirlineToggleWhitespace
let g:airline_powerline_fonts = 0

Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }
Plug 'rust-lang/rust.vim'
let g:rustfmt_autosave = 1

Plug 'ycm-core/YouCompleteMe'

call plug#end()

filetype plugin indent on

colorscheme ron

set number
set scrolloff=3
set mouse=a
set cmdheight=2
set tabstop=4
set shiftwidth=4
