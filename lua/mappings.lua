require "nvchad.mappings"

local map = vim.keymap.set

map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>")

-- GitUI terminal
map("n", "<leader>gi", function()
  require("gitui").open()
end, { desc = "GitUI" })

-- Line wrap
map({ "n", "v" }, "<leader>ww", "<cmd>set wrap!<CR>", { desc = "Toggle line wrapping" })

-- Editor splitting
map({ "n", "v" }, "<leader>-", "<cmd>split<CR>", { desc = "New horizontal split" })
map({ "n", "v" }, "<leader>|", "<cmd>vsplit<CR>", { desc = "New vertical split" })
map({ "n", "v" }, "<leader>X", "<cmd>close<CR>", { desc = "Close current split/window" })
map({ "n", "v" }, "<leader>A", "<cmd>only<CR>", { desc = "Close all split/window except current one" })
