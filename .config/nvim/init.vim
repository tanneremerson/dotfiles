" hello front end masters
set path+=**

set relativenumber

" Ignore files
set wildignore+=*.pyc
set wildignore+=*_build/*
set wildignore+=**/coverage/*
set wildignore+=**/node_modules/*
set wildignore+=**/.git/*


" curl -fLo ~/.local/share/nvim/site/autoload/plug.vim \
" --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

call plug#begin('~/.vim/plugged')

" Clojure
Plug 'Olical/conjure', {'tag': 'v4.24.1'}
Plug 'guns/vim-sexp'
Plug 'tpope/vim-sexp-mappings-for-regular-people'
Plug 'tpope/vim-repeat'

" Plebvim lsp Plugins
Plug 'neovim/nvim-lspconfig'

" Neovim Tree sitter
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}

Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-rhubarb'
Plug 'mbbill/undotree'
Plug 'gruvbox-community/gruvbox'

" telescope requirements...
Plug 'nvim-lua/popup.nvim'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
Plug 'nvim-telescope/telescope-fzy-native.nvim'

" HARPOON!!
Plug 'nvim-lua/plenary.nvim'
Plug 'ThePrimeagen/harpoon'

call plug#end()

let mapleader = " "
let maplocalleader=","

nnoremap <Leader>j <C-W><C-J>
nnoremap <Leader>k <C-W><C-K>
nnoremap <Leader>l <C-W><C-L>
nnoremap <Leader>h <C-W><C-H>

map <Leader>ks >)
map <Leader>kb <)
map <Leader>kfs <(
map <Leader>kfb >(
map <Leader>kr <LocalLeader>o
map <Leader>km <LocalLeader>@

