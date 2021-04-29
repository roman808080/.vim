" Don't try to be vi compatible
set nocompatible

" Helps force plugins to load correctly when it is turned back on below
filetype off

" Load plugins here (pathogen)
execute pathogen#infect()

" Turn on syntax highlighting
syntax on

" For plugins to load correctly
filetype plugin indent on

" Security
set modelines=0

" Show line numbers
set number

" Show file stats
set ruler

" Blink cursor on error instead of beeping (grr)
set visualbell

" Encoding
set encoding=utf-8

" Cursor motion
" sets 3 visible lines above or beneath
set scrolloff=3
" allows backspace in insert mode 
set backspace=indent,eol,start
set matchpairs+=<:> " use % to jump between pairs

" Move up/down editor lines
" j -> down a physical line. gj -> down a visual line
nnoremap j gj
" k -> up a physical line. gk -> up a visual line
nnoremap k gk

" Allow hidden buffers
set hidden

" Rendering
set ttyfast

" Status bar
set laststatus=2

" Last line
set showmode
set showcmd

" Searching
nnoremap / /\v
vnoremap / /\v
set hlsearch
set incsearch
set ignorecase
set smartcase
set showmatch

" Textmate holdouts

" Color scheme (terminal)
set t_Co=256
set background=dark
let g:solarized_termcolors=256
let g:solarized_termtrans=1
" put https://raw.github.com/altercation/vim-colors-solarized/master/colors/solarized.vim
" in ~/.vim/colors/ and uncomment:
" colorscheme solarized

" Highlight tabs as errors.
" https://vi.stackexchange.com/a/9353/3168
" match Error /\t/
" Set characters for tabs
" set list
" set listchars=tab:>-

" Adding mouse support.
set mouse=a
set ttymouse=sgr

" PACKAGES Settings

" START NERDTree
" Start NERDTree and put the cursor back in the other window.
autocmd VimEnter * NERDTree | wincmd p

" Exit Vim if NERDTree is the only window left.
autocmd BufEnter * if tabpagenr('$') == 1 && winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() |
    \ quit | endif

" Open the existing NERDTree on each new tab.
autocmd BufWinEnter * silent NERDTreeMirror

" Replace arrows
let g:NERDTreeDirArrowExpandable = '+'
let g:NERDTreeDirArrowCollapsible = '-'

" Bindings for openning and focus
nmap <F1> :NERDTreeToggle<CR>
nmap <F2> :NERDTreeFocus<CR>
" END NERDTree

" START taglist.vim
" Open and close tags
nnoremap <silent> <F8> :TlistToggle<CR>
" Fixes sizes of the tag window
let g:Tlist_WinWidth=29
" END taglist.vim

