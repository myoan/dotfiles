-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

-- LazyVim binds <C-s> to ":w<cr>" in i/x/n/s modes; free it back up.
vim.keymap.del({ "i", "x", "n", "s" }, "<C-s>")
