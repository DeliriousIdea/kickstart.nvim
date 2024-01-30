return {
  "rmagatti/auto-session",
  lazy = false,
  silent = false,
  keys = {
    {"<leader>zs", "<cmd>SessionSave<cr>", desc = "[S]ave Session", {}},
    {"<leader>zr","<cmd>Autosession search<cr>", desc = "[R]estore Session", {}}
  },
  config = function()
    require("auto-session").setup{
      log_level = "error",
      auto_session_enabled = true,
      auto_save_enabled = true,
      auto_session_enable_last_session = true,
      auto_session_last_session_dir = vim.fn.stdpath('data').."/sessions/",
      auto_session_root_dir = vim.fn.stdpath('data').."/sessions/",
      auto_session_suppress_dirs = { "~/", "~/Projects", "~/Downloads", "/"}
    }
  end
}

