" Five steps to get started:

" (1) Copy this file to ~/.config/nvim/init.vim

" (2) Replace this with a path to brangelina on your machine.
source ~/dotfiles/whimsical-vim/whimsical.vim

call plug#begin('~/.local/share/nvim/plugged')
  call WhimsicalPlugins()
  " (3) Add your custom plugins below.
  Plug 'lifepillar/vim-solarized8'
  Plug 'christoomey/vim-tmux-navigator'
  Plug 'tpope/vim-fireplace'
  ""Plug 'rking/ag'
  Plug 'venantius/vim-cljfmt'
  Plug 'itchyny/lightline.vim'
  Plug 'ElmCast/elm-vim'
call plug#end()

" (4) Configure the theme you want to use below.
" let g:lightline = { 'colorscheme': 'solarized' }
let g:solarized_use16 = 1
set background=dark
colorscheme solarized8
let g:neoterm_shell = 'zsh'
let g:elm_format_autosave = 1
let g:neoformat_enabled_json = []

" whitespace
set listchars=tab:»\ ,eol:¬
set list
let g:indentLine_char = '·'
let g:indentLine_enabled = 1

" (5) Enjoy using whimsical-vim.vim. Issues and pull requests are welcome!
