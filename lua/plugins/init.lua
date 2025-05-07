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
        "snakemake",
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

  -- GitUI terminal
  {
    "aspeddro/gitui.nvim",
    opts = {
      window = {
        options = {
          width = 95,
          height = 95,
        },
      },
    },
  },

  -- Markdown Previewer
  -- { "jannis-baum/vivify.vim", ft = { "markdown" } },
  {
    "iamcco/markdown-preview.nvim",
    cmd = { "MarkdownPreviewToggle", "MarkdownPreview", "MarkdownPreviewStop" },
    build = "cd app && yarn install",
    init = function()
      vim.g.mkdp_filetypes = { "markdown" }
    end,
    ft = { "markdown" },
  },

  -- LaTeX support
  {
    "lervag/vimtex",
    lazy = false,
    -- ft = { "tex" },
    init = function()
      -- VimTeX configuration goes here, e.g.
      vim.g.vimtex_view_method = "skim"
      vim.g.vimtex_view_skim_sync = 1
      vim.g.vimtex_view_skim_activate = 1
      vim.g.vimtex_compiler_latexmk = {
        ["out_dir"] = "build",
      }
    end,
  },
}
