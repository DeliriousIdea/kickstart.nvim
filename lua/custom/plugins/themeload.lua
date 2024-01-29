--
-- ---Loads the theme from the json file. Returns empty if file not found, or if it is also empty
-- local savedTheme = "default"
-- local function loadThemeName()
--   local configFile = io.open(ConfigThemeLocation, "r") -- Load the file
--   local jsonTheme = {} -- Setup
--
--   -- Check if it exists with nil
--   if configFile ~= nil then
--     io.input(configFile)
--     jsonTheme = vim.json.decode(io.read("*L"))
--     if jsonTheme ~= nil then
--       for _, value in pairs(jsonTheme) do
--         savedTheme = value
--       end
--     end
--     io.close(configFile)
--   end
-- end
--
-- return{
--   loadThemeName(),
--   vim.api.nvim_command("colorscheme " .. savedTheme),
-- }
--
--Use autocmds
return{

}
