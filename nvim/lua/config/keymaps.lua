-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
--
vim.keymap.del({ "n", "x", "o" }, "s")

local options = { noremap = true, silent = true }
vim.keymap.set("i", "<C-a>", "^", options)
vim.keymap.set("i", "<C-e>", "$", options)
vim.keymap.set("n", "<C-a>", "^", options)
vim.keymap.set("n", "<C-e>", "$", options)
vim.keymap.set("n", "<C-j>", "<C-w>", options)
vim.keymap.set("n", "<Esc><Esc>", "<cmd>:nohlsearch<Enter>", options)

-- vim.keymap.set("n", "<leader>ff", "<cmd>:Telescope find_files hidden=true<Enter>", options)
