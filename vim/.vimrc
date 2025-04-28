set number              " Show line numbers
syntax on
set relativenumber      " Show relative line numbers
set tabstop=4           " Number of spaces per tab
set shiftwidth=4        " Indentation width
set expandtab           " Use spaces instead of tabs
set autoindent          " Auto-indent new lines
set wrap                " Wrap long lines
set ignorecase          " Ignore case in searches
set smartcase           " Case-sensitive if uppercase is used
set incsearch           " Incremental search
set hlsearch            " Highlight search results
set clipboard=unnamedplus " Use system clipboard
set scrolloff=8         " Keep 8 lines above/below cursor
set noswapfile
" Make cursor block in normal mode
autocmd VimEnter,InsertLeave * silent !echo -ne "\e[2 q"
" Make cursor underline in insert mode
autocmd InsertEnter * silent !echo -ne "\e[4 q"
filetype plugin indent on

" Mappings
nnoremap gd gd:noh<CR>
nnoremap gD gD:noh<CR>

autocmd BufNewFile *.cpp 0r /home/iislamgom3a/vimcp/lib/template.cpp
" Enable auto-indentation based on file type

call plug#begin()
" List your plugins here
Plug 'vim-airline/vim-airline'
Plug 'morhetz/gruvbox'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
call plug#end()

let g:gruvbox_contrast_dark = 'hard'
let g:gruvbox_transparent_bg = '0'
set background=dark
colorscheme gruvbox
