-- Change the directory if you wish to move the file somewhere else. For the purpose of this file,
-- it will not create a new config file. You just need to add it, the as soon as a theme is loaded
-- with the keybind, it will save the theme name
ConfigThemeLocation = vim.fs.normalize("~\\AppData\\local\\nvim\\lua\\custom\\themeConfig.json")

local function chooseTheme()
  require('telescope.builtin').colorscheme(require('telescope.themes').get_dropdown({
    enable_preview = true,
    winblend = 10,
  }))
end

---Saves the current theme to a config file
-- local function saveTheme()
--   local configFile = io.open(ConfigThemeLocation, "w+") -- Load the file
--   local jsonTheme = {vim.api.nvim_eval("g:colors_name")} -- Setup
--
--   -- Check if it exists with nil
--   if configFile ~= nil then
--     -- io.output(configFile)
--     jsonTheme = vim.json.encode(jsonTheme)
--     if jsonTheme ~= nil then
--       io.write(jsonTheme)
--     end
--     io.close(configFile)
--   end
-- end

return {
  vim.keymap.set('n', '<leader>b', chooseTheme, { desc = 'Themes' }),
  -- saveTheme(),
}
