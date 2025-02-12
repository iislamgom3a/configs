set number              " Show line numbers
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
set backup              " Enable backup files
set undofile            " Persistent undo
set clipboard=unnamedplus " Use system clipboard
set scrolloff=8         " Keep 8 lines above/below cursor
autocmd BufWritePost $MYVIMRC source $MYVIMRC
" Enable syntax highlighting
syntax on
filetype plugin indent on
set relativenumber
set tabstop=4
syntax on
colorscheme habamax
call plug#begin('~/.local/share/nvim/plugged')
Plug 'preservim/nerdtree'
Plug 'raimondi/delimitmate'
Plug 'vim-airline/vim-airline'
Plug 'altercation/solarized'
call plug#end()

" Map <Space> as the leader key
let mapleader=" "

nnoremap <Leader>s :w<CR>
nnoremap <Leader>q :bd<CR>
nnoremap <Leader>t :NERDTreeToggle<CR>

" Jump out using Tab
inoremap <Tab> <C-R>=ClosePair()<CR>
function! ClosePair()
    let char_after = getline('.')[col('.') - 1]
    if char_after == ')'
        return "\<Right>"
    elseif char_after == '}'
        return "\<Right>"
    elseif char_after == ']'
        return "\<Right>"
    elseif char_after == '"'
        return "\<Right>"
    elseif char_after == "'"
        return "\<Right>"
    else
        return "\<Tab>"
    endif
endfunction

