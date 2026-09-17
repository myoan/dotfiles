-- bootstrap lazy.nvim, LazyVim and your plugins
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1
vim.g.mapleader = " "

vim.opt.backup = false
vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.list = true
vim.opt.ruler = true
vim.opt.shiftwidth = 4
vim.opt.tabstop = 4
vim.opt.termguicolors = true
vim.opt.winblend = 5
vim.opt.pumblend = 5
vim.opt.clipboard = "unnamedplus"
vim.opt.autoread = true
vim.api.nvim_command("set listchars=tab:>-,trail:~,nbsp:%,extends:>,precedes:<,eol:$")

require("config.lazy")
