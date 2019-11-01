" Five steps to get started:

" (1) Copy this file to ~/.config/nvim/init.vim

" # Global settings
filetype plugin indent on
syntax on
set tabstop=2 shiftwidth=2 expandtab
set shiftround " for line shifting
set termguicolors " have some ok colors
let &showbreak = '↪ '
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

" CoC
" Some servers have issues with backup files, see #649
set nobackup
set nowritebackup " Better display for messages
set cmdheight=2 " You will have bad experience for diagnostic messages when it's default 4000.
set updatetime=300

" Use `[g` and `]g` to navigate diagnostics
nmap <silent> [g <Plug>(coc-diagnostic-prev)
nmap <silent> ]g <Plug>(coc-diagnostic-next)
" Using CocList
" Show all diagnostics
nnoremap <silent> <space>a  :<C-u>CocList diagnostics<cr>

" # FZF stuff
let g:fzf_layout = { 'window': 'enew' }
" I removed an mN before each of these, not sure what that means
" bindings for fuzzy-finding
nnoremap <silent> <C-P> :call fzf#run(fzf#wrap({
  \ "source": "git ls-files --others --cached --exclude-standard \| similar-sort " . @%,
  \ "sink": "edit",
  \ "options": "--tiebreak index"
  \ }))<CR>

nnoremap <C-F> :GFiles<cr>
nnoremap <C-B> :Buffers<CR>
nnoremap <C-/> :Lines<cr>
" For these I did not remove mN - what is it?
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
  Plug 'tpope/vim-fireplace'
  Plug 'venantius/vim-cljfmt'
  Plug 'itchyny/lightline.vim'
  Plug 'neoclide/coc.nvim', {'branch': 'release'} " Language server managements
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
let g:coc_global_extensions = ['coc-solargraph']

