-- [[ Globals ]]
local ConfigThemeLocation
if vim.loop.os_uname().sysname == 'Linux' then
    ConfigThemeLocation = vim.fs.normalize('~/.config/nvim/lua/custom/themeConfig.json')
else
    ConfigThemeLocation = vim.fs.normalize('$APPDATA$/local/nvim/lua/custom/themeConfig.json')
end

-- [[ Highlight on yank ]]
-- See `:help vim.highlight.on_yank()`
local highlight_group = vim.api.nvim_create_augroup('YankHighlight', { clear = true })
vim.api.nvim_create_autocmd('TextYankPost', {
    callback = function()
        vim.highlight.on_yank()
    end,
    group = highlight_group,
    pattern = '*',
})


-- [[ Save Theme on exit ]]
vim.api.nvim_create_autocmd('VimLeavePre', {
    callback = function()
        local configFile = io.open(ConfigThemeLocation, "w+")    -- Load the file
        local jsonTheme = { vim.api.nvim_eval("g:colors_name") } -- Setup

        -- Check if it exists with nil
        if configFile ~= nil then
            jsonTheme = vim.json.encode(jsonTheme)
            if jsonTheme ~= nil then
                configFile:write(jsonTheme)
            end
            configFile:close()
        else
            print("not found")
        end
    end
})

-- -- [[ Apply theme on load ]]
-- -- Doesn't apply theming to buffline or lualine. They might be loading before the theme is being applied
-- -- TODO:
-- -- Figure that out
vim.api.nvim_create_autocmd('VimEnter', {
    callback = function()
        local configFile = io.open(ConfigThemeLocation, "r") -- Load the file

        -- Check if it exists with nil
        if configFile ~= nil then
            local theme = configFile:read() -- 1 line of code for 2
            theme = vim.json.decode(theme)
            if theme ~= nil then
                for _, value in pairs(theme) do
                    vim.cmd.colorscheme(value)
                end
            end
            configFile:close()
        else
            print("Not found")
        end
    end
})
-- Delay the setup functions for lualine and bufferline
vim.defer_fn(function()
    require('lualine').setup({})
    require('bufferline').setup()
end, 100)


vim.o.hlsearch = false

-- Make line numbers default
vim.wo.number = true
vim.wo.relativenumber = true

-- Tabs
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true

-- Enable mouse mode
vim.o.mouse = 'a'

-- Sync clipboard between OS and Neovim.
--  Remove this option if you want your OS clipboard to remain independent.
--  See `:help 'clipboard'`
vim.o.clipboard = 'unnamedplus'

-- Enable break indent
vim.o.breakindent = true

-- Save undo history
vim.o.undofile = true

-- Case-insensitive searching UNLESS \C or capital in search
vim.o.ignorecase = true
vim.o.smartcase = true

-- Keep signcolumn on by default
vim.wo.signcolumn = 'yes'

-- Decrease update time
vim.o.updatetime = 250
vim.o.timeoutlen = 300

-- Set completeopt to have a better completion experience
vim.o.completeopt = 'menuone,noselect'

-- NOTE: You should make sure your terminal supports this
vim.o.termguicolors = true

-- [[ Basic Keymaps and Settings]]
-- Session options that autosession recommends. Remove if it breaks anything.
vim.o.sessionoptions = "blank,buffers,curdir,folds,help,tabpages,winsize,winpos,terminal,localoptions"

vim.o.wrap = false
