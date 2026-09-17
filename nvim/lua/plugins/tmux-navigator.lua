return {
  "christoomey/vim-tmux-navigator",
  cmd = {
    "TmuxNavigateLeft",
    "TmuxNavigateDown",
    "TmuxNavigateUp",
    "TmuxNavigateRight",
    "TmuxNavigatePrevious",
    "TmuxNavigatorProcessList",
  },
  -- keys mirror tmux.conf's `bind C-h/C-j/C-k/C-l`, which (since the tmux
  -- prefix is C-j) relays "C-j" followed by a plain h/j/k/l into vim when
  -- the active pane is running vim; see tmux/tmux.conf's `is_vim` check.
  -- stylua: ignore
  keys = {
    { "<c-j>h", "<cmd>TmuxNavigateLeft<cr>" },
    { "<c-j>j", "<cmd>TmuxNavigateDown<cr>" },
    { "<c-j>k", "<cmd>TmuxNavigateUp<cr>" },
    { "<c-j>l", "<cmd>TmuxNavigateRight<cr>" },
    { "<c-j>\\", "<cmd>TmuxNavigatePrevious<cr>" },
  },
}
