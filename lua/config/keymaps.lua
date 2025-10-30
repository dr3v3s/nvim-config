-- Keymaps
local map = vim.keymap.set
-- set <Space> as leader key
vim.g.mapleader = " "
map("n", "<Space>", "<Nop>", { silent = true })
-- Telescope shortcuts
map("n", "<leader>ff", "<cmd>Telescope find_files<CR>", { desc = "Find files" })
map("n", "<leader>fg", "<cmd>Telescope live_grep<CR>", { desc = "Live grep" })
