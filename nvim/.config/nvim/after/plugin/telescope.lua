local builtin = require('telescope.builtin')

require("telescope").setup {
  defaults = {
    vimgrep_arguments = {
      "rg",
      "--no-heading",
      "--with-filename",
      "--line-number",
      "--column",
      "--hidden",
      "--smart-case",
      '--glob',  -- this flag allows you to hide exclude these files and folders from your search 👇
      '!{**/.git/*,**/node_modules/*,**/package-lock.json,**/yarn.lock}',
    }
  }
}

vim.keymap.set('n', '<leader>pf', "<cmd>lua require'telescope.builtin'.find_files({ find_command = {'rg', '--files', '--hidden', '-g', '!.git' }})<cr>", {})
vim.keymap.set('n', '<leader>bb', builtin.buffers, {})
vim.keymap.set('n', '<leader>/', builtin.live_grep, {})
vim.keymap.set('n', '<leader>gr', builtin.lsp_references, {})
vim.keymap.set('n', '<leader>rl', builtin.resume, {})

