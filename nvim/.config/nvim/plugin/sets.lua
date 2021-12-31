vim.opt.splitbelow = true
vim.opt.splitright = true
vim.opt.relativenumber = true

vim.opt.guicursor = ""

vim.opt.errorbells = false

vim.opt.tabstop = 2
vim.opt.softtabstop = 2
vim.opt.shiftwidth = 2
vim.opt.expandtab = true
vim.opt.smartindent = true

vim.opt.hlsearch = false
vim.opt.hidden = true
vim.opt.wrap = false
vim.opt.swapfile = true
vim.opt.backup = false
vim.opt.undodir = "~/.vim/undodir"
vim.opt.undofile = true
vim.opt.incsearch = true
vim.opt.scrolloff = 8
vim.opt.showmode = false
vim.opt.ls = 0
vim.opt.isfname:append "@-@"


vim.opt.cmdheight = 1

-- Having longer updatetime (default is 4000 ms = 4 s) leads to noticeable
-- delays and poor user experience.
vim.opt.updatetime = 50

-- Don't pass messages to |ins-completion-menu|.
vim.opt.shortmess:append "c"

vim.opt.colorcolumn = { 80, 100 }

vim.opt.path:append "**"

vim.opt.relativenumber = true

-- Ignore files
vim.opt.wildignore:append "*.pyc"
vim.opt.wildignore:append "*_build/*"
vim.opt.wildignore:append "**/coverage/*"
vim.opt.wildignore:append "**/node_modules/*"
vim.opt.wildignore:append "**/.git/*"
