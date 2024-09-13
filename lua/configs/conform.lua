local options = {
  formatters_by_ft = {
    lua = { "stylua" },
    css = { "prettierd" },
    html = { "prettierd" },
    js = { "prettierd" },
    rust = { "rustfmt" },
    python = { "ruff_format" },
    c = { "clang-format" },
    cpp = { "clang-format" },
    bash = { "shfmt" },
    latex = { "latexindent" },
  },

  format_on_save = {
    -- These options will be passed to conform.format()
    timeout_ms = 500,
    lsp_fallback = true,
  },
}

return options
