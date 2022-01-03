local opts = { noremap=true, silent=true }

local keymap = vim.api.nvim_set_keymap


-- Mappings.
keymap('n', '<Leader>ff', '<cmd>lua require("telescope.builtin").find_files({ hidden = true })<cr>', opts)
keymap('n', '<Leader>fg', '<cmd>lua require("telescope.builtin").live_grep()<cr>', opts)
keymap('n', '<Leader>fb', '<cmd>lua require("telescope.builtin").buffers()<cr>', opts)
keymap('n', '<Leader>fh', '<cmd>lua require("telescope.builtin").help_tags()<cr>', opts)
keymap('n', '<Leader>cf', '<cmd>lua require("telescope.builtin").file_browser()<cr>', opts)
