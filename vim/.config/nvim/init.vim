" set runtimepath^=~/.vim runtimepath+=~/.vim/after
" let &packpath=&runtimepath
" source ~/.vimrc

call plug#begin()

Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

Plug 'neoclide/coc.nvim', {'branch': 'release'}

let g:airline_theme='dark'
autocmd VimEnter * AirlineToggleWhitespace
let g:airline_powerline_fonts = 0

call plug#end()

" colorscheme ron

set number
set scrolloff=3
set mouse=a
set cmdheight=2
set tabstop=4
