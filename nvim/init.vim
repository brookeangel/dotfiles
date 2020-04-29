" Five steps to get started:

" (1) Copy this file to ~/.config/nvim/init.vim

" # Global settings
filetype plugin indent on
syntax on
set tabstop=2 shiftwidth=2 expandtab
set shiftround " for line shifting
set termguicolors " have some ok colors
set clipboard^=unnamed,unnamedplus
set shell=/bin/bash " required by gitgutter plugin
set updatetime=100  " ensures gitgutter updates every 100ms
set hidden " don't close unsaved buffers, just hide
set number " show line number
set mouse=a " but don't copy those numbers
set splitbelow " slightly more intuitive buffer splits
set splitright " slightly more intuitive buffer splits
set undodir=~/tmp/vim/undo " save butt if laptop crashes
set undofile " ditto save butt
set wildignorecase " ignore case when searching files + dir
set noswapfile " no swapfiles!
let &showbreak = '↪ '

" CoC
" Some servers have issues with backup files, see #649
set nobackup
set nowritebackup " Better display for messages
set cmdheight=2 " You will have bad experience for diagnostic messages when it's default 4000.
set updatetime=300

" # FZF stuff
let g:fzf_layout = { 'window': 'enew' }
" bindings for fuzzy-finding
nnoremap <silent> <C-P> :Files<cr>
nnoremap <silent> <C-F> :GFiles<cr>
nnoremap <silent> <C-B> :Buffers<CR>
nnoremap <silent> <C-/> :Lines<cr>

nnoremap <leader><leader> mN:Commands<cr>
nnoremap <leader>/ mN:History/<cr>
nnoremap <leader>: mN:History:<cr>
nnoremap <leader>? mN:Helptags<cr>

let $FZF_DEFAULT_OPTS .= ' --no-height' " fixes fzf in nvim terminals

" # Plugin configuration

call plug#begin('~/.local/share/nvim/plugged')
  " (3) Add your custom plugins below.
  Plug 'tpope/vim-sensible'  " Defaults everyone can agree on
  Plug 'junegunn/fzf'  "  Fuzzy file searching
  Plug 'junegunn/fzf.vim'  "  vim bindings for fzf
  Plug 'lifepillar/vim-solarized8'
  Plug 'christoomey/vim-tmux-navigator'  " Smoothly navigate between tmux windows
  Plug 'tpope/vim-commentary' "  (Un)commenting lines
  Plug 'itchyny/lightline.vim' " bottom status thing
  Plug 'maximbaz/lightline-ale' " integrate lightline with Ale
  Plug 'machakann/vim-highlightedyank' "  Highlight copying
  Plug 'sbdchd/neoformat'
  Plug 'tpope/vim-fugitive'                  "  GIT integration
  Plug 'airblade/vim-gitgutter' "  Column with line changes
  Plug 'mhinz/vim-startify'  " startup page
  Plug 'sheerun/vim-polyglot'  "  Combines a whole bunch of vim syntax packs
  Plug 'vim-airline/vim-airline'
  Plug 'vim-airline/vim-airline-themes'
  Plug 'tpope/vim-eunuch'  "  Unix commands
  Plug 'jreybert/vimagit' " Git, supposedly
  Plug 'tpope/vim-vinegar' "  press - to see directories
  Plug 'tpope/vim-unimpaired' "  paste on line below
  Plug 'dense-analysis/ale' " linting, correcting, etc.
  Plug 'mileszs/ack.vim' " Search for stuff
call plug#end()

" (4) Configure the theme you want to use below.
let g:solarized_use16 = 1
set background=dark
colorscheme solarized8
let g:neoterm_shell = 'zsh'
" let g:neoformat_enabled_json = []
let g:airline_theme='atomic' " nice with almost all colorschemes
let g:startify_change_to_vcs_root = 1  " Don't end up in weird dir after fzf

" whitespace
set listchars=tab:»\ ,eol:¬
set list
let g:indentLine_char = '·'
let g:indentLine_enabled = 1

" bring in airline extensions
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#vimagit#enabled = 1

" one file per line when we view directory
let g:netrw_liststyle=1

" Try to solve too many buffers making vim slow
let g:startify_session_delete_buffers = 1

" # Mappings
" I copied this in from whimsical but idk what this does
let g:mapleader=' '
let g:maplocalleader='\'

" Ale
let g:ale_linters = { 'javascript': ['eslint'] }

" Lightline-Ale Integration
let g:lightline = {}

let g:lightline.component_expand = {
      \  'linter_checking': 'lightline#ale#checking',
      \  'linter_infos': 'lightline#ale#infos',
      \  'linter_warnings': 'lightline#ale#warnings',
      \  'linter_errors': 'lightline#ale#errors',
      \  'linter_ok': 'lightline#ale#ok',
      \ }

let g:lightline.component_type = {
      \     'linter_checking': 'right',
      \     'linter_infos': 'right',
      \     'linter_warnings': 'warning',
      \     'linter_errors': 'error',
      \     'linter_ok': 'right',
      \ }

let g:lightline.active = { 'right': [[ 'linter_checking', 'linter_errors', 'linter_warnings', 'linter_infos', 'linter_ok' ]] }
