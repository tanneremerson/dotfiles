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

" Javascript
Plug 'maxmellon/vim-jsx-pretty'
Plug 'neovim/nvim-lspconfig'
Plug 'jose-elias-alvarez/null-ls.nvim'
Plug 'jose-elias-alvarez/nvim-lsp-ts-utils'

call plug#end()

" Show and remove Trailing whitespace
highlight ExtraWhitespace ctermbg=red guibg=red
match ExtraWhitespace /\s\+\%#\@<!$/
autocmd BufWritePre * :%s/\s\+$//e
