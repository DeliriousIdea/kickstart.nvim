return {
  -- TODO: figure out how to grab amount of select lines for visual mode
  vim.keymap.set({'n', 'v'}, '<C-k>', ':m -2<cr>',{ silent = true}),
  vim.keymap.set({'n', 'v'}, '<C-j>', ':m +1<cr>',{ silent = true}),
}
