" set runtimepath^=~/.vim runtimepath+=~/.vim/after
" let &packpath=&runtimepath
" source ~/.vimrc

call plug#begin()

Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
" Plug 'dense-analysis/ale'

" Airline config
let g:airline_theme='dark'
autocmd VimEnter * AirlineToggleWhitespace
let g:airline_powerline_fonts = 0

" Ale config
" In ~/.vim/vimrc, or somewhere similar.
" let g:ale_fixers = {
" \   '*': ['remove_trailing_lines', 'trim_whitespace'],
" \   'javascript': ['eslint'],
" \   'golang': ['gopls'],
" \}
" Set this variable to 1 to fix files when you save them.
" let g:ale_fix_on_save = 1

call plug#end()

colorscheme ron

set number
set scrolloff=3
set mouse=a
set cmdheight=2
set tabstop=4
set shiftwidth=4
