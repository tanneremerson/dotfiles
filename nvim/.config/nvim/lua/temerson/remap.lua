vim.keymap.set('n', ' ', '<Nop>')
vim.keymap.set('v', ' ', '<Nop>')
vim.g.mapleader = ' '

vim.keymap.set('n', ',', '<Nop>')
vim.keymap.set('v', ',', '<Nop>')
vim.g.maplocalleader = ','

vim.keymap.set('n', '<leader>pv', vim.cmd.Ex)
vim.keymap.set('v', 'J', ":m '>+1<CR>gv=gv")
vim.keymap.set('v', 'K', ":m '<-2<CR>gv=gv")
vim.keymap.set('n', 'J', 'mzJ`z')
vim.keymap.set('n', 'n', 'nzzzv')
vim.keymap.set('n', 'N', 'Nzzzv')
vim.keymap.set('v', 'cl', ':Commentary<CR>', { silent = true })
vim.keymap.set('n', '<leader>cl', ':Commentary<CR>', { silent = true })

vim.keymap.set('n', '<leader>x', "<cmd>!chmod +x %<CR>", { silent = true })

vim.keymap.set('n', '<leader>h', '<C-w>h')
vim.keymap.set('n', '<leader>j', '<C-w>j')
vim.keymap.set('n', '<leader>k', '<C-w>k')
vim.keymap.set('n', '<leader>l', '<C-w>l')

vim.keymap.set('n', '<leader>dv', 'yiwoconsole.log(`debug: ${JSON.stringify(<ESC>pa, null, 2)}`);<ESC>F:')

local options = {
  relativenumber = true,
  nu = true,

  splitbelow = true,
  splitright = true,

  guicursor = "",

  errorbells = false,

  tabstop = 2,
  softtabstop = 2,
  shiftwidth = 2,
  expandtab = true,
  smartindent = true,

  swapfile = false,
  backup = false,
  hlsearch = false,

  incsearch = true,
  undofile = true,

  ignorecase = true,
  smartcase = true,

  termguicolors = true,

  scrolloff = 8,

  hidden = true,
  wrap = false,
  showmode = false,
  ls = 0,
  cmdheight = 1,

  updatetime = 50,                       -- Having longer updatetime (default is 4000 ms = 4 s) leads to noticeable delays and poor user experience.

  colorcolumn = { 80, 100 },             -- Add indicator at 80 and 100 col

  autoread = true,
}

for k, v in pairs(options) do
  vim.opt[k] = v
end


