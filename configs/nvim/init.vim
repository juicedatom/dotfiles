"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""VIM PLUG"""""""""""""""""""""""""""""""""""""""""""""""""""
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set nocompatible              " be iMproved, required
filetype off                  " required

call plug#begin('~/.config/nvim/plugged')

Plug 'tpope/vim-fugitive'
Plug 'vim-airline/vim-airline'
Plug 'terryma/vim-multiple-cursors'
Plug 'Valloric/YouCompleteMe'
Plug 'mhinz/vim-grepper'
Plug 'djoshea/vim-autoread'
Plug 'yegappan/mru'
Plug 'jeetsukumaran/vim-buffergator'
Plug 'francoiscabrol/ranger.vim'
Plug 'rbgrouleff/bclose.vim'

" All of your Plugins must be added before the following line
call plug#end()            " required

" let ranger replace netrw
let g:ranger_replace_netrw = 1

command Ex RangerCurrentDirectory

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""YCM and Tags"""""""""""""""""""""""""""""""""""""""""""""""
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"
" needed to run the following to get neovim to work with YCM
" user@computer: sudo pip2 install --upgrade neovim
" user@computer: sudo pip3 install --upgrade neovim
"
"let g:ycm_global_ycm_extra_conf = '/home/jmanela/.config/nvim/plugged/YouCompleteMe/third_party/ycmd/cpp/ycm/.ycm_extra_conf.py'
let g:ycm_global_ycm_extra_conf = '/home/juicedatom/.config/nvim/.ycm_extra_conf.py'
let g:ycm_allow_changing_updatetime = 0
let g:ycm_enable_diagnostic_highlighting = 0
let g:ycm_collect_identifiers_from_tags_files = 1
let g:ycm_show_diagnostics_ui = 0

" ctags
" ctags -R --exclude=.git --fields=+l --langmap=c++:.cc.hh
" set tags+=/home/jmanela/code/repos/some_repo

filetype plugin indent on    " required

" Setup relative numbering for vim usage.
set relativenumber

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

set autoread

" Set 'nocompatible' to ward off unexpected things that your distro might
" have made, as well as sanely reset options when re-sourcing .vimrc
set nocompatible

" Switch between cc and hh file.
map <F2> :e %:p:s,.hh$,.X123X,:s,.cc$,.hh,:s,.X123X$,.cc,<CR>
highlight Search ctermfg=yellow ctermbg=blue

syntax on

" This disables the "Press enter to continue" prompts
set cmdheight=2

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""INDENT"""""""""""""""""""""""""""""""""""""""""""""""""""""
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Attempt to determine the type of a file based on its name and possibly its
" contents. Use this to allow intelligent auto-indenting for each filetype,
" and for plugins that are filetype specific.
filetype indent plugin on

" Indentation settings for using 4 spaces instead of tabs.
" " Do not change 'tabstop' from its default value of 8 with this setup.
set shiftwidth=2
set softtabstop=2
set expandtab
set autoindent

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""OTHER""""""""""""""""""""""""""""""""""""""""""""""""""""""
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

set background=dark

" Display line numbers
set number
set ruler
let mapleader = ","

function! ClipboardYank()
  call system('xclip -i -selection clipboard', @@)
endfunction
function! ClipboardPaste()
  let @@ = system('xclip -o -selection clipboard')
endfunction

vnoremap <silent> y y:call ClipboardYank()<cr>
vnoremap <silent> d d:call ClipboardYank()<cr>
nnoremap <silent> p :call ClipboardPaste()<cr>p

" clipboard
set clipboard=unnamedplus

" Exit terminal mode (neovim)
tnoremap <Esc> <C-\><C-n>


