return {
  "akinsho/bufferline.nvim",
  lazy = false,
  keys = {
    {"<S-Tab>", "<cmd>BufferLineCyclePrev<cr>", desc = "Next Buffer"},
      {"<Tab>", "<cmd>BufferLineCycleNext<cr>", desc = "Next Buffer"},
      {"<S-l>", "<cmd>BufferLineMoveNext<cr>", desc = "Move Buffer Right"},
      {"<S-h>", "<cmd>BufferLineMovePrev<cr>", desc = "Move Buffer Left"},
  },
  config = function()
    require("bufferline").setup{
      options = {
        color_icons = true,
        diagnostics = 'nvim_lsp',
        separator_style = "slant",
        hover =  {
          enabled = true,
          delay = 250,
        },
      },
    }
  end,
}
