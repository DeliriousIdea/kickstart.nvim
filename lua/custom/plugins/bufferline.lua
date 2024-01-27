return {
  "akinsho/bufferline.nvim",
  lazy = false,
  -- Add custom logic to make tab go to the next buffer, then
  -- wrap back around to the first when hitting tab on the last one
  keys = {
    {"<S-Tab>", "<cmd>BufferLineCyclePrev<cr>", desc = "Next Buffer"},
      {"<Tab>", "<cmd>BufferLineCycleNext<cr>", desc = "Next Buffer"},
  },
  config = function()
    require("bufferline").setup{
      options = {
	diagnostics = "nvim_lsp",
	separator_style = "slant",
	hover =  {
	  enabled = true,
	  delay = 250,
	},
      },
    }
  end,
  -- Custom logic
}
