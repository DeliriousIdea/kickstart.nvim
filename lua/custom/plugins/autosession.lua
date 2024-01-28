return {
  "rmagatti/auto-session",
  lazy = false,
  keys = {
    {"<leader>zs", "<cmd>SessionSave<cr>", desc = "[S]ave Session", {}}
  },
  config = function()
    require("auto-session").setup{
      log_level = "error",
      auto_session_enabled = true,
      auto_session_enable_last_session = true,
      auto_session_last_session_dir = vim.fn.stdpath('data').."/sessions/",
      auto_session_root_dir = vim.fn.stdpath('data').."/sessions/",
      auto_save_enabled = true,
    }
  end
}

