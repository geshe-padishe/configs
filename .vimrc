" Plugins :
call plug#begin()

Plug 'mhinz/vim-startify'
Plug 'kana/vim-surround'
Plug 'vim-syntastic/syntastic'
Plug 'pbondoer/vim-42header'
Plug 'preservim/nerdtree'
Plug 'ErichDonGubler/vim-sublime-monokai'

call plug#end()

" Shell
set shell=/path/to/zsh

" Auto commands :
autocmd VimEnter * NERDTree | wincmd p
autocmd BufEnter * if tabpagenr('$') == 1 && winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() |
    \ quit | endif

" Syntastic settings :
nnoremap <S-S> :SyntasticToggleMode<CR>
let g:syntastic_c_compiler = "gcc"
let g:syntastic_c_compiler_options=" -Wall -Werror -Wextra -Weverything"

set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

" Split panes management bindings

" Syntax settings
syntax on
colorscheme sublimemonokai
highlight Directory ctermfg=red

" Terminal vs buffers PeaceMaker
tnoremap <Esc> <C-\><C-n>
tnoremap jj <C-\><C-n>
tnoremap <C-J> <C-W><C-J>
tnoremap <C-K> <C-W><C-K>
tnoremap <C-L> <C-W><C-L>
tnoremap <C-H> <C-W><C-H>
tnoremap <leader>n :NERDTreeFocus<CR>
tnoremap <C-n> :NERDTree<CR>
tnoremap <C-t> :NERDTreeToggle<CR>
tnoremap <C-f> :NERDTreeFind<CR>

noremap <leader>n :NERDTreeFocus<CR>
noremap <C-n> :NERDTree<CR>
noremap <C-t> :NERDTreeToggle<CR>
noremap <C-f> :NERDTreeFind<CR>
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
