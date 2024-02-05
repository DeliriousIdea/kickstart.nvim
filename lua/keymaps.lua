-- Keymaps for better default experience
-- See `:help vim.keymap.set()`
vim.keymap.set({ 'n', 'v' }, '<Space>', '<Nop>', { silent = true })

-- Remap for dealing with word wrap
vim.keymap.set('n', 'k', "v:count == 0 ? 'gk' : 'k'", { expr = true, silent = true })
vim.keymap.set('n', 'j', "v:count == 0 ? 'gj' : 'j'", { expr = true, silent = true })

-- Line shifting multiple in visual
vim.api.nvim_set_keymap('v', '<C-k>', ':m-2<CR>gv=gv', { noremap = true, silent = true })
vim.api.nvim_set_keymap('v', '<C-j>', ':m\'>+<CR>gv=gv', { noremap = true, silent = true })
-- Normal Mode Single Line
vim.api.nvim_set_keymap('n', '<C-k>', ':m-2<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<C-j>', ':m+<CR>', { noremap = true, silent = true })
