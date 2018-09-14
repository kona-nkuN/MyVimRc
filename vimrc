let leader = ","
let mapleader = ","

" the setting of dein
if &compatible
    set nocompatible
endif

" Add the dein installation directory into runtimepath
set runtimepath+=~/.cache/dein/repos/github.com/Shougo/dein.vim

if dein#load_state('~/.cache/dein')
    call dein#begin('~/.cache/dein')
    call dein#add('~/.cache/dein')
    call dein#add('Shougo/deoplete.nvim')
    call dein#add('cohama/lexima.vim')
    call dein#add('scrooloose/nerdtree')
    call dein#add('tpope/vim-surround')
    call dein#add('szw/vim-tags')
    call dein#add('mattn/emmet-vim')
    call dein#add('morhetz/gruvbox')
    call dein#add('Shougo/denite.nvim')
    if !has('nvim')
        call dein#add('roxma/nvim-yarp')
        call dein#add('roxma/vim-hug-neovim-rpc')
    endif

    call dein#end()
    call dein#save_state()
    let g:deoplete#enable_at_startup = 1 
endif

if dein#check_install()
    call dein#install()
endif

" about tabs {{
set tabstop=2 "tabspot is the unmber of spaces a <TAB> counts for.
set shiftwidth=2 " make << >> insert 4 sapces
set expandtab " a tab turns into just spaces
"}}

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
autocmd VimEnter * NERDTree " As soon as vim opens, NERDTree command is executed

" ctags setting
nnoremap <C-h> :vsp<CR> :exe("tjump ".expand('<cword>'))<CR>
nnoremap <C-k> :split<CR> :exe("tjump ".expand('<cword>'))<CR>
" show list of candidates only if there is more than two candidates 
nnoremap <C-]> g<C-]>

" indent setting
set autoindent " keep indent before the line
set smartindent " insert indent properly

" make it possible to copy texts to clipboard wtih vim
set clipboard=unnamedplus

" This is a setting to use gruvbox. Modified 2018.8.11
syntax enable
set background=dark
colorscheme gruvbox

if &term =~ '256color'
    " disable Background Color Erase (BCE) so that color schemes
    " render properly when inside 256-color tmux and GNU screen.
    " see also http://snk.tuxfamily.org/log/vim-256color-bce.html
    set t_ut=
endif

filetype plugin indent on
