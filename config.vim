call plug#begin('~/.vim/plugged') 
Plug 'morhetz/gruvbox'
Plug 'dracula/vim'
Plug 'preservim/nerdtree'
Plug 'joshdick/onedark.vim'
Plug 'jiangmiao/auto-pairs'
Plug 'crusoexia/vim-monokai'
Plug 'ghifarit53/tokyonight-vim'
Plug 'arzg/vim-colors-xcode'
Plug 'mhinz/vim-startify'
Plug 'sonph/onehalf' 
Plug 'neoclide/coc.nvim', {'branch': 'release'} 
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'tomasr/molokai'
Plug 'takac/vim-hardtime'
Plug 'lifepillar/vim-solarized8'
call plug#end()

set nu "line numbers
syntax enable 
"nice smart tab 
set expandtab
set showtabline=2
set tabstop=2
set softtabstop=2
set shiftwidth=2
set noswapfile "doesnt create swp files
set nohlsearch "stop highlighting after search
set incsearch "while typing a search command, show where the pattern, as it was typed
set termguicolors "sets gui colors in terminal
colorscheme gruvbox
set t_Co=256 "no of colors
set wildmenu "auto complete in menu
set cursorline "highlights a line where cursor is 
set noshowmode  " to get rid of thing like --INSERT--
set noshowcmd  " to get rid of display of last command
set shortmess+=F  " to get rid of the file name displayed in the command line bar
set scrolloff=8


let g:NERDTreeWinSize=22
let g:NERDTreeDirArrowExpandable = '  ▸'
let g:NERDTreeDirArrowCollapsible = '  ▾'
let NERDTreeMinimalUI = 1
let NERDTreeDirlArrows = 1
let g:airline_symbols_ascii = 1
let g:airline_theme='gruvbox'
let g:airline_powerline_fonts = 1 
let g:airline#extensions#whitespace#enabled = 0
let g:airline_right_sep = ''
let g:airline_section_z = ''


autocmd BufEnter * if tabpagenr('$') == 1 && winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() |
\ quit | endif
autocmd BufWinEnter * silent NERDTreeMirror

let mapleader = " "

nnoremap <leader>h <C-w>h <CR>
nnoremap <leader>j <C-w>j <CR>
nnoremap <leader>k <C-w>k <CR>
nnoremap <leader>l <C-w>l <CR>
nnoremap  <leader>n :NERDTreeToggle <CR>
nnoremap <leader>t  :below terminal ++rows=10 <Cr>
tmap <C-p> <C-W>"+
tnoremap <C-b>   <C-\><c-n>

source ~/.vim/COCconfig.vim
