return {
  vim.keymap.set('n', '<leader>b', function()
    require('telescope.builtin').colorscheme(require('telescope.themes').get_dropdown({
      enable_preview = true,
      winblend = 10
    }))
  end, { desc = 'Themes'}),
}
