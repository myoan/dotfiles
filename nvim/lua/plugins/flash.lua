return {
  {
    "folke/flash.nvim",
    -- keep `s`/`S` as vanilla Vim substitute; move Flash jump to <leader>j*
    -- stylua: ignore
    keys = {
      { "s", false, mode = { "n", "x", "o" } },
      { "S", false, mode = { "n", "o", "x" } },
      { "<leader>js", mode = { "n", "x", "o" }, function() require("flash").jump() end, desc = "Flash Jump" },
      { "<leader>jS", mode = { "n", "o", "x" }, function() require("flash").treesitter() end, desc = "Flash Treesitter" },
    },
  },
}
