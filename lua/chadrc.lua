-- This file needs to have same structure as nvconfig.lua
-- https://github.com/NvChad/ui/blob/v2.5/lua/nvconfig.lua
-- Please read that file to know all available options :(

-- ---@type ChadrcConfig
---@class ChadrcConfig
local M = {}

-- Customized theme
M.base46 = {
  theme = "catppuccin_frappe",
  -- theme = "kanagawa",
  hl_override = {
    Comment = { italic = true },
    ["@comment"] = { italic = true },
  },
}

-- Floating terminal resizing
M.term = {
  float = {
    relative = "editor",
    row = 0.05,
    col = 0.1,
    width = 0.8,
    height = 0.8,
    border = "double",
  },
}

-- UI tweaks
M.ui = {
  nvdash = {
    load_on_startup = true,
    buttons = {
      { "󱇧  New Buffer", "Spc b  ", "tabnew" },
      { "  Find File", "Spc f f", "Telescope find_files" },
      { "󰈚  Recent Files", "Spc f o", "Telescope oldfiles" },
      { "󰈭  Find Word", "Spc f w", "Telescope live_grep" },
      { "  Bookmarks", "Spc m a", "Telescope marks" },
      { "  Mappings", "Spc c h", "NvCheatsheet" },
    },
    header = {
      "████████████▀█▀████████████████████",
      "████████▀███▀▀▀█████▀█▀▀▀█▀█▀██████",
      "████████ █▀█ ▀ █▀▀▀█ █ ▀ █ █ ██████",
      "█████▀▀█ ▀ ▀▀▀ █ ▀ ▀ ▀▀ ▀▀ █ ██████",
      "███▀█ ▀▀ █▀█▀▀█▀ █▀▀▀▀▀▀▀▀▀▀▀▀▀▀███",
      "███ ▀▀▀▀█▀▀▀█ █▀█▀▀▀█▀█▀▀▀█▀█▀█ █▀█",
      "█▀█ █ ▀ █ ▀ █ █ █ ▀ █ █ ▀ █▀▀▀█ █ █",
      "█ ▀ █▀█ ▀▀ ▀▀ █ █▀▀ █ █▀█ █ ▀ ▀ █ █",
      "█████ ▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀ █ ▀ ▀▀▀ █████",
      "▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀",
    },
  },
  telescope = {
    style = "bordered",
  },
}

-- Tools for mason to install
M.mason = {
  pkgs = {
    -- Python
    "ruff",
    "pyright",
    -- JS/HTML/CSS
    "eslint-lsp",
    "html-lsp",
    "css-lsp",
    "prettierd",
    -- Rust
    "rust-analyzer",
    "rustfmt",
    -- Lua
    "lua-language-server",
    "stylua",
    -- C/C++
    "clangd",
    "clang-format",
    -- LaTeX/TeX
    "texlab",
    "latexindent",
    -- Shell
    "bash-language-server",
    "shfmt",
  },
}

return M
