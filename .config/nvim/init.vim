" Five steps to get started:

" (1) Copy this file to ~/.config/nvim/init.vim

" (2) Replace this with a path to brangelina on your machine.
source ~/Code/brangelina/brangelina.vim

" remove me if ale stops being a butthead
" let g:ale_linters = { 'elm': [] }

call plug#begin('~/.vim/plugged')
  call BrangelinaPlugins()
  " (3) Add your custom plugins below.
  Plug 'iCyMind/NeoSolarized'
  Plug 'christoomey/vim-tmux-navigator'
call plug#end()

" Disable ^h backspace remapping for vim-tmux-navigator
nnoremap <silent> <BS> :TmuxNavigateLeft<cr>

" (4) Configure the theme you want to use below.
colorscheme NeoSolarized
let g:lightline = { 'colorscheme': 'solarized' }
set background=dark
let g:neoterm_shell = 'zsh'

" So we don't accidentally delete ruby files
let g:neoformat_enabled_ruby=[]
let g:neoformat_enabled_sass=[]
let g:neoformat_enabled_json=[]

" (5) Enjoy using branglina.vim. Issues and pull requests are welcome!
" For everything else, use a tab width of 4 space chars.
set tabstop=2       " The width of a TAB is set to 2.
                    " Still it is a \t. It is just that
                    " Vim will interpret it to be having
                    " a width of 2.
set shiftwidth=2    " Indents will have a width of 2.
set softtabstop=2   " Sets the number of columns for a TAB.
set expandtab       " Expand TABs to spaces.
autocmd Filetype ruby setlocal ts=2 sts=2 sw=2
autocmd Filetype javascript setlocal ts=2 sts=2 sw=2
autocmd Filetype json setlocal ts=2 sts=2 sw=2
