let leader = ","
let mapleader = ","

" about tabs
set tabstop=4 "tabspot is the unmber of spaces a <TAB> counts for.
set expandtab " a tab turns into just "four spaces".

" UI config
set number " show line numbers
set cursorline " highlight the current line
set showmatch " highlight matching {}, [], ()

" searching setting
set incsearch " start searching as soon as you start typing
set hlsearch " highlight the matches
" 
nnoremap <leader><space> :nohlsearch<CR> 

" movement setting
"move vertically by visula line
nnoremap j gj
nnoremap k gk

" move to beginning/end of line
nnoremap E $
nnoremap B ^

" $/^ doesn't do anything
nnoremap $ <nop>
nnoremap ^ <nop>

" NERDTree setting
execute pathogen#infect()
autocmd VimEnter * NERDTree " As soon as vim opens, NERDTree command is executed

" ctags setting
nnoremap <C-h> :vsp<CR> :exe("tjump ".expand('<cword>'))<CR>
nnoremap <C-k> :split<CR> :exe("tjump ".expand('<cword>'))<CR>
" show list of candidates only if there is more than two candidates 
nnoremap <C-]> g<C-]>
