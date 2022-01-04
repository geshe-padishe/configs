" Plugins :
call plug#begin()

Plug 'airblade/vim-gitgutter'
Plug 'editorconfig/editorconfig-vim'
Plug 'itchyny/lightline.vim'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'mattn/emmet-vim'
Plug 'terryma/vim-multiple-cursors'
Plug 'tpope/vim-eunuch'
Plug 'w0rp/ale'
Plug 'mhinz/vim-startify'
Plug 'kana/vim-surround'
Plug 'vim-syntastic/syntastic'
Plug 'pbondoer/vim-42header'
Plug 'ErichDonGubler/vim-sublime-monokai'
Plug 'rafi/awesome-vim-colorschemes'
Plug 'sainnhe/sonokai'

call plug#end()

" Auto commands :

" Startify settings:
let g:startify_bookmarks = [
      \ '~/.vimrc'         ]
" Syntastic settings :
nnoremap <S-S> :SyntasticToggleMode<CR>
let g:syntastic_c_compiler = "gcc"
let g:syntastic_c_compiler_options=" -Wall -Werror -Wextra -Weverything"
let g:syntastic_mode_map = { 'mode': 'passive' }

set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

" Split panes management bindings

" Syntax settings
set backspace=indent,eol,start
syntax on
colorscheme sonokai
highlight Directory ctermfg=red
set cursorline

" Terminal vs buffers PeaceMaker
tnoremap <Esc> <C-\><C-n>
tnoremap jj <C-\><C-n>
tnoremap <C-J> <C-W><C-J>
tnoremap <C-K> <C-W><C-K>
tnoremap <C-L> <C-W><C-L>
tnoremap <C-H> <C-W><C-H>

noremap <C-J> <C-W><C-J>
noremap <C-K> <C-W><C-K>
noremap <C-L> <C-W><C-L>
noremap <C-H> <C-W><C-H>

" Split panes direction
set splitbelow
set splitright

set noswapfile

set colorcolumn=81

set termguicolors
set guicursor=
set cursorline
hi CursorLine cterm=bold ctermbg=239 guifg=NONE

" Keyboard bindings
inoremap jj <ESC>

""inoremap ( ()<left>
""inoremap " ""<left>
""inoremap { {}<left><enter><enter><up><tab>
""inoremap [ []<left>
inoremap <F2> if ()<left>
inoremap <F3> else if ()<left>
inoremap <F4> else<enter>
inoremap <F5> while ()<left>
inoremap <F6> if (!( = ()malloc(sizeof() * )))<enter>return ();<up><left><left><left><left><left><left><left><left><left><left><left><left>
inoremap <F10> return ();<left><left>

set scrolloff=5
set list
set listchars=tab:>-,nbsp:_,trail:*,extends:),precedes:(
set tabstop=4
set shiftwidth=4
set softtabstop=4
set noexpandtab
set smartindent
set smarttab
set hlsearch

" Folding
set foldlevelstart=99
set foldlevel=99
set foldenable
set foldnestmax=1
set foldmethod=syntax

" Mouse
set mouse=a

" Undoing
set undolevels=1000

" Basics
set nu
set ruler
set nowrap
set ttyfast
set showmatch
