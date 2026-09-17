-- Disable unused LazyVim default plugins
return {
  { "rafamadriz/friendly-snippets", enabled = false },
  { "folke/ts-comments.nvim", enabled = false },
  { "akinsho/bufferline.nvim", enabled = false },
  { "catppuccin/nvim", enabled = false },
  -- lazydev.nvim stays enabled: it provides the `vim` global / API types
  -- to lua_ls while editing this Neovim config, which we do here.
}
