local opts = { noremap = true, silent = true }

local keymap = vim.api.nvim_set_keymap

-- Mappings.
keymap('', '<Space>', '<NOP>', opts)
vim.g.mapleader = ' '
vim.g.maplocalleader = ','

-- Normal --
-- Window navigation
keymap('n', '<Leader>j', '<C-W><C-J>', opts)
keymap('n', '<Leader>k', '<C-W><C-K>', opts)
keymap('n', '<Leader>l', '<C-W><C-L>', opts)
keymap('n', '<Leader>h', '<C-W><C-H>', opts)

-- Slurp and barf commands
keymap('n', '<Leader>ks', '>', opts)
keymap('n', '<Leader>kb', '<', opts)
keymap('n', '<Leader>kfs', '<(', opts)
keymap('n', '<Leader>kfb', '>(', opts)
keymap('n', '<Leader>kr', '<LocalLeader>o', opts)
keymap('n', '<Leader>km', '<LocalLeader>@', opts)

-- Visual --
-- Stay in indent mode
keymap('v', '<', '<gv', opts)
keymap('v', '>', '>gv', opts)
