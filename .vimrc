set nocompatible              " be iMproved, required for vundle

" set the runtime path to include Vundle and initialize
"set rtp+=~/d/vim/

" --------------------------------------------
"                 Vundle
" --------------------------------------------
set rtp+=~/.vim/bundle/Vundle.vim
filetype off                  " required

call vundle#begin()
    Plugin 'VundleVim/Vundle.vim'             " required
    "Plugin 'vim-airline/vim-airline'
"    Plugin 'vim-airline/vim-airline-themes'
    Plugin 'jpalardy/vim-slime'
    Plugin 'scrooloose/nerdcommenter'
"    Plugin 'Valloric/YouCompleteMe'
call vundle#end()                         

filetype plugin indent on    " required
" ---------------------------------------------


"          Initialize
set term=screen-256color       " define terminal. should be the same as in .tmux.conf. 

"     Key Mapping
let mapleader="\<Space>"                  " change the mapleader from '\' to space
nnoremap <leader>w :w<CR>                 " Type <Space>w to save file
nnoremap <leader>q :q<CR>
nnoremap <leader>wq :wq<CR>                 " Type <Space>wq to save and quit file
nnoremap <leader>a @                      " for playing back macros
nmap <leader>l :bnext<CR>                 " Move to the next buffer
nmap <leader>h :bprevious<CR>             " Move to the previous buffer
map <F7> mzgg=G`z                         " Reindent the entire file
nmap ; :
    

"      General
let &t_Co=256                      " Enable 256 colors
set number                         " Show line numbers
set backspace=indent,eol,start     " Allow backspace in insert mode
set laststatus=2                   " Always show the status bar
set autoread                       " Reload files changed outside vim
set hidden                         " allows buffers to be hidden if they are modified
set pastetoggle=<c-a>              " Paste without being smart
set nowrap                         " Don't wrap lines
set clipboard=unnamed              " Use the system clipboard

"set clipboard=unnamedplus          " registers map to the clipboard, and can be pasted with CTRL-V
set ruler                          " Cursor position
set showmatch                      " Show matching brackets
set encoding=utf-8                 " File encoding
set termencoding=utf-8
set fileencoding=utf-8


" --------------------------------------------------------
"                    Indentation
" - More info at http://www.vex.net/~x/python_and_vim.html
" --------------------------------------------------------
set modeline
set lazyredraw
set smartindent
set autoindent
set expandtab                       " turn tabs into spaces
set softtabstop=4                   " allow vim to see 4 spaces as a tab
set tabstop=4                       "set tab to indent 4 spaces
set shiftwidth=4                    "indent width for autoindent
set cursorline                      " show a cursor line
set ttyfast                         " Send more characters for redraws
set mouse=a                         " Enable Mouse in all modes


" --------------------------------------------
"                  Theme
" --------------------------------------------
syntax enable 
set background=dark
colorscheme zeno2

" --------------------------------------------
"                  Vim-Slime
" --------------------------------------------
let g:slime_target = "tmux"
let g:slime_paste_file = "~/.slime_paste"
let g:slime_default_config = {"socket_name": "default", "target_pane": "1"}
let g:slime_dont_ask_default = 1

xmap <leader><tab> <Plug>SlimeRegionSend
nmap <leader><tab> <Plug>SlimeLineSend
nmap <leader>N     <Plug>SlimeConfig


" --------------------------------------------
"            Vim-Airline (Powerline)
" --------------------------------------------
set noshowmode                                     " Hide the default mode text (e.g. -- INSERT -- below the statusline)

"let g:airline_powerline_fonts = 1                  " Allows for special symbols
"let g:airline_section_z = '%'                      " Make the right side empty
"let g:airline#extensions#tabline#enabled = 1       " Enable the list of buffers
"let g:airline#extensions#tabline#fnamemod = ':t'   " Show just the filename
"let g:airline_theme = 'murmur'

" --------------------------------------------
"               Python Syntax
" --------------------------------------------
let python_highlight_all=1 " enable all Python syntax highlighting features


