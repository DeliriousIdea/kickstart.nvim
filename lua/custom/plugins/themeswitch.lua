local function chooseTheme()
  require('telescope.builtin').colorscheme(require('telescope.themes').get_dropdown({
    enable_preview = true,
    winblend = 10,
  }))
end


return {
  vim.keymap.set('n', '<leader>b', chooseTheme, { desc = 'Themes' }),
}
