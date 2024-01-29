ConfigThemeLocation = vim.fs.normalize("~\\AppData\\local\\nvim\\lua\\custom\\themeConfig.json")

---Loads the theme from the json file. Returns empty if file not found, or if it is also empty
---@return string
local function loadTheme()
  local configFile = io.open(ConfigThemeLocation, "r") -- Load the file
  local jsonTheme = {} -- Setup
  local savedTheme = ""

  -- Check if it exists with nil
  if configFile ~= nil then
    io.input(configFile)
    jsonTheme = io.read("*a")
    jsonTheme = vim.json.decode(jsonTheme)
    if jsonTheme ~= nil then
      for _, value in pairs(jsonTheme) do
        savedTheme = value
      end
    end
  end
  return savedTheme
end

local function chooseTheme()
  require('telescope.builtin').colorscheme(require('telescope.themes').get_dropdown({
    enable_preview = true,
    winblend = 10
  }))
  local theme = loadTheme()
  print(theme)
end

return {
  vim.keymap.set('n', '<leader>b', chooseTheme, { desc = 'Themes' })
}
