return {
  'folke/trouble.nvim',
  dependencies = {"nvim-tree/nvim-web-devicons"},
  keys = {
    {'<leader>q', '<cmd>TroubleToggle<cr>', desc = 'Diagnostics',{}}
  },
  opts = {
    position = "bottom",
    cycle_results = true,
    action_keys = {
      close = "q",
      cancel = "<esc>",
      refresh = "r",
      jump = {"<cr>","<tab>","<2-leftmouse>"},
      toggle_mode = "m",
      toggle_preview = "p",
      open_code_href = "c",
      next = "j",
      previous = "k",
      help = "?",
    },
    auto_preview = true,
    signs = {
      -- icons / text used for a diagnostic
      error = "",
      warning = "",
      hint = "",
      information = "",
      other = "",
    }
  }
}

