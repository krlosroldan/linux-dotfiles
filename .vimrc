" Load pathogen
execute pathogen#infect()
autocmd StdinReadPre * let s:std_in=1
" Show NERDTree  when nothing is opened
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
" Save fold positions
autocmd BufWinLeave *.* mkview
autocmd BufWinEnter *.* silent loadview
set encoding=utf-8
set laststatus=2
" Airline/status bar
let g:airline_powerline_fonts=1
let g:airline#extensions#tabline#enabled=1
let g:airline_theme="base16_embers"
let g:notes_directories = ['~/cloud/usc/notes']
map <C-n> :NERDTreeToggle<CR>
syntax on
filetype plugin indent on
source ~/.colemak.vim
