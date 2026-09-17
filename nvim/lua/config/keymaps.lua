-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

-- LazyVim binds <C-s> to ":w<cr>" in i/x/n/s modes; free it back up.
vim.keymap.del({ "i", "x", "n", "s" }, "<C-s>")

-- Shell-style line navigation.
-- This overrides normal-mode <C-a>/<C-e> (increment number / scroll down line).
vim.keymap.set("i", "<C-a>", "<C-o>^", { desc = "Go to start of line" })
vim.keymap.set("i", "<C-e>", "<C-o>$", { desc = "Go to end of line" })
vim.keymap.set("n", "<C-a>", "^", { desc = "Go to start of line" })
vim.keymap.set("n", "<C-e>", "$", { desc = "Go to end of line" })
