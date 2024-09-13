-- load defaults i.e lua_lsp
require("nvchad.configs.lspconfig").defaults()

local lspconfig = require "lspconfig"

-- EXAMPLE
local servers = {
  -- JS/HTML/CSS
  "eslint",
  "html",
  "cssls",
  -- Python
  "ruff",
  "pyright",
  -- Rust
  "rust_analyzer",
  -- lua
  "lua_ls",
  -- TeX/LaTeX
  "texlab",
  -- bash
  "bashls",
  -- C/C++
  "clangd",
}

local nvlsp = require "nvchad.configs.lspconfig"

-- lsps with default config
for _, lsp in ipairs(servers) do
  lspconfig[lsp].setup {
    on_attach = nvlsp.on_attach,
    on_init = nvlsp.on_init,
    capabilities = nvlsp.capabilities,
  }
end

-- configuring single server, example: typescript
-- lspconfig.ts_ls.setup {
--   on_attach = nvlsp.on_attach,
--   on_init = nvlsp.on_init,
--   capabilities = nvlsp.capabilities,
-- }
