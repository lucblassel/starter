local M = {}

M.base_30 = {
  white = "#c6d0f5",
  darker_black = "#232634",
  black = "#292c3c", --  nvim bg
  black2 = "#303446",
  one_bg = "#414559", -- real bg of onedark
  one_bg2 = "#51576d",
  one_bg3 = "#626880",
  grey = "#737994",
  grey_fg = "#838ba7",
  grey_fg2 = "#949cbb",
  light_grey = "#a5adce",
  red = "#e78284",
  baby_pink = "#f2d5cf",
  pink = "#eebebe",
  line = "#232634", -- for lines like vertsplit
  green = "#a6d189",
  vibrant_green = "#b6f4be",
  nord_blue = "#8caaee",
  blue = "#85c1dc",
  yellow = "#e5c890",
  sun = "#ef9f76",
  purple = "#f4b8e4",
  dark_purple = "#ca9ee6",
  teal = "#81c8be",
  orange = "#ea999c",
  cyan = "#99d1db",
  statusline_bg = "#232634",
  lightbg = "#2f2e3e",
  pmenu_bg = "#ABE9B3",
  folder_bg = "#89B4FA",
  lavender = "#babbf1",
}

M.base_16 = {
  base00 = "#303446",
  base01 = "#292c3c",
  base02 = "#414559",
  base03 = "#51576d",
  base04 = "#626880",
  base05 = "#c6d0f5",
  base06 = "#f2d5cf",
  base07 = "#babbf1",
  base08 = "#e78284",
  base09 = "#ef9f76",
  base0A = "#e5c890",
  base0B = "#a6d189",
  base0C = "#81c8be",
  base0D = "#8caaee",
  base0E = "#ca9ee6",
  base0F = "#eebebe",
}

M.polish_hl = {
  ["@variable"] = { fg = M.base_30.lavender },
  ["@property"] = { fg = M.base_30.teal },
  ["@variable.builtin"] = { fg = M.base_30.red },
}

M.type = "dark"

-- M = require("base46").override_theme(M, "catppuccin")

return M
