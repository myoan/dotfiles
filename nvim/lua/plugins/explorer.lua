-- File explorer sidebar (left side), toggled on repeated press.
return {
  "folke/snacks.nvim",
  opts = {
    explorer = {},
  },
  keys = {
    {
      "<leader>e",
      function()
        Snacks.explorer({ cwd = LazyVim.root() })
      end,
      desc = "Toggle Explorer (root dir)",
    },
    {
      "<leader>E",
      function()
        Snacks.explorer()
      end,
      desc = "Toggle Explorer (cwd)",
    },
  },
}
