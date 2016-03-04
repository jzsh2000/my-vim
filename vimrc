" Last modified:
" Tue Mar  1 20:43:07 CST 2016
colorscheme desert

set nocompatible
set modeline
set number
set history=1000
set autoindent
set smartindent
set softtabstop=4
set shiftwidth=4
set expandtab
set showmatch
set ruler
set hlsearch
set incsearch
set wrap
set linebreak
set showcmd
set ignorecase smartcase
set backspace=indent,eol,start
set wildmenu
set wildmode=full
set fileencodings=utf-8-bom,ucs-bom,utf-8,cp936,gb18030,ucs,big5
set formatoptions+=mB1

" set grepprg=ack\ --nogroup\ --column\ $*
" set grepformat=%f:%l:%c:%m

" autocmd filetype text setlocal textwidth=78
"autocmd BufWritePost * call system("ctags -R")
autocmd filetype r set commentstring=#\ %s

map <Up> gk
map <Down> gj
map Y y$
cnoremap <C-p> <Up>
cnoremap <C-n> <Down>
cnoremap <expr> %% getcmdtype() == ':' ? expand('%:h').'/' : '%%'
nnoremap Q gq
nnoremap <silent> <C-l> :<C-u>nohlsearch<CR><C-l>
nnoremap & :&&<CR>
xnoremap & :&&<CR>

" let mapleader=","
" noremap \ ,

let Tlist_Show_One_File=1
let Tlist_Exit_OnlyWindow=1
let Tlist_Use_Right_Window=1
let Tlist_GainFocus_On_ToggleOpen=1
let Tlist_Close_On_Select=1

syntax on
filetype on
filetype indent on
filetype plugin on

execute pathogen#infect()

" set background to red when line length exceeds 80
highlight OverLength ctermbg=red ctermfg=white guibg=#592929
match OverLength /\%81v.\+/

if &shell =~# 'fish$'
    set shell=bash
endif

" if version >= 603
"     set helplang=cn
" endif
