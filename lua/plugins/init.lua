return {
  {
    "stevearc/conform.nvim",
    -- event = 'BufWritePre', -- uncomment for format on save
    opts = require "configs.conform",
  },

  -- NeoVim LSP Config
  {
    "neovim/nvim-lspconfig",
    config = function()
      require "configs.lspconfig"
    end,
  },

  -- TreeSitter Grammars
  {
    "nvim-treesitter/nvim-treesitter",
    opts = {
      ensure_installed = {
        "vim",
        "lua",
        "vimdoc",
        "html",
        "css",
        "rust",
        "go",
        "python",
        "bash",
        "markdown",
        "latex",
        "c",
        "cpp",
        "javascript",
      },
    },
  },

  -- Open files in neovim from neovim terminal
  {
    "willothy/flatten.nvim",
    opts = {
      window = { open = "alternate", diff = "tab_vsplit", focus = "first" },
    },
    lazy = false,
  },
}
