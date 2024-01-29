-- Change the directory if you wish to move the file somewhere else. For the purpose of this file,
-- it will not create a new config file. You just need to add it, the as soon as a theme is loaded
-- with the keybind, it will save the theme name

local function chooseTheme()
  require('telescope.builtin').colorscheme(require('telescope.themes').get_dropdown({
    enable_preview = true,
    winblend = 10,
  }))
end


return {
  vim.keymap.set('n', '<leader>b', chooseTheme, { desc = 'Themes' }),
}
