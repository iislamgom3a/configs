

"Use 24-bit (true-color) mode in Vim/Neovim when outside tmux.
"If you're using tmux version 2.2 or later, you can remove the outermost $TMUX check and use tmux's 24-bit color support
"(see < http://sunaku.github.io/tmux-24bit-color.html#usage > for more information.)
if (empty($TMUX) && getenv('TERM_PROGRAM') != 'Apple_Terminal')
  if (has("nvim"))
    "For Neovim 0.1.3 and 0.1.4 < https://github.com/neovim/neovim/pull/2198 >
    let $NVIM_TUI_ENABLE_TRUE_COLOR=1
  endif
  "For Neovim > 0.1.5 and Vim > patch 7.4.1799 < https://github.com/vim/vim/commit/61be73bb0f965a895bfb064ea3e55476ac175162 >
  "Based on Vim patch 7.4.1770 (`guicolors` option) < https://github.com/vim/vim/commit/8a633e3427b47286869aa4b96f2bfc1fe65b25cd >
  " < https://github.com/neovim/neovim/wiki/Following-HEAD#20160511 >
  if (has("termguicolors"))
    set termguicolors
  endif
endif

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
let g:gruvbox_italic=1
colorscheme gruvbox
let g:gruvbox_contrast_dark = 'hard'   " For dark mode contrast
let g:gruvbox_termcolors=16
call plug#begin('~/.local/share/nvim/plugged')
Plug 'preservim/nerdtree'
Plug 'raimondi/delimitmate'
Plug 'morhetz/gruvbox'
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

