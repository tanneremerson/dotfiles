local options = {
  relativenumber = true,

  splitbelow = true,
  splitright = true,

  guicursor = "",

  errorbells = false,

  tabstop = 2,
  softtabstop = 2,
  shiftwidth = 2,
  expandtab = true,
  smartindent = true,

  ignorecase = true,
  smartcase = true,
  hlsearch = false,
  termguicolors = true,
  hidden = true,
  wrap = false,
  swapfile = false,
  backup = false,
  undofile = true,
  incsearch = true,
  scrolloff = 8,
  showmode = false,
  ls = 0,
  cmdheight = 1,
  updatetime = 50,                       -- Having longer updatetime (default is 4000 ms = 4 s) leads to noticeable delays and poor user experience.
  colorcolumn = { 80, 100 },             -- Add indicator at 80 and 100 col
}

for k, v in pairs(options) do
  vim.opt[k] = v
end
