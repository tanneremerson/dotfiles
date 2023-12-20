local lsp = require('lsp-zero').preset({})

lsp.on_attach(function(_, bufnr)
  -- see :help lsp-zero-keybindings
  -- to learn the available actions
  lsp.default_keymaps({buffer = bufnr})
end)

lsp.setup()

local cmp = require('cmp')

vim.keymap.set('n', ',aa', vim.lsp.buf.code_action, { silent = true })
vim.keymap.set('n', ',rr', vim.lsp.buf.rename)

cmp.setup({
  mapping = {
    ['jk'] = cmp.mapping.confirm({select = false}),
  },
  completion = {
    completeopt = 'menu,menuone,noinsert'
  }
})

require'lspconfig'.lua_ls.setup {
  -- ... other configs
  settings = {
    Lua = {
      diagnostics = {
        globals = { 'vim' }
      }
    }
  }
}

require'lspconfig'.tsserver.setup {
  -- ... other configs
  settings = {
    Lua = {
      diagnostics = {
        disable = { "7044" }
      }
    }
  }
}

vim.lsp.handlers["textDocument/publishDiagnostics"] = vim.lsp.with(
  vim.lsp.diagnostic.on_publish_diagnostics, {
    signs = true,
    virtual_text = true,
    underline = false
  }
)

require'lspconfig'.yamlls.setup{
    settings = {
        yaml = {
            schemas = {
                ["https://raw.githubusercontent.com/quantumblacklabs/kedro/develop/static/jsonschema/kedro-catalog-0.17.json"]= "conf/**/*catalog*",
                ["https://json.schemastore.org/github-workflow.json"] = "/.github/workflows/*"
            }
        }
    }
}
