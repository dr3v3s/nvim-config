-- bootstrap lazy.nvim if not installed
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

require("config.options")
require("config.keymaps")

require("lazy").setup({
  spec = {
    { "catppuccin/nvim", name = "catppuccin", priority = 1000 },
    { "nvim-lualine/lualine.nvim" },
    { "lewis6991/gitsigns.nvim" },
    { "nvim-telescope/telescope.nvim", dependencies = { "nvim-lua/plenary.nvim" } },
    { "echasnovski/mini.surround", version = false },
    { "echasnovski/mini.comment", version = false },
    { "windwp/nvim-autopairs" },
    { "neovim/nvim-lspconfig" },
    { "williamboman/mason.nvim" },
    { "williamboman/mason-lspconfig.nvim" },
    { "hrsh7th/nvim-cmp" },
    { "nvim-treesitter/nvim-treesitter", build = ":TSUpdate" },
    { "stevearc/conform.nvim" },
    { "epwalsh/obsidian.nvim", version = "*", dependencies = { "nvim-lua/plenary.nvim" } },
  },
})
