return {
  vim.keymap.set({'n', 'i'}, '<C-k>', ':m -2<cr>',{ silent = true}),
  vim.keymap.set({'n', 'i'}, '<C-j>', ':m +1<cr>',{ silent = true}),
  --Multi line shift up
  vim.keymap.set('v', '<C-k>', function ()
  local cur_start = vim.fn.getpos("v")
  local cur_end = vim.fn.getpos(".")

  local move_cmd = cur_start[2] .. ',' .. cur_end[2] .. 'm' .. cur_start[2] - 2
  vim.cmd(':' .. move_cmd)

  vim.cmd([[normal! :noh]])
  vim.api.nvim_win_set_cursor(0, {cur_start[2] - 1, 0})
  vim.cmd([[normal V]])
  vim.api.nvim_win_set_cursor(0, {cur_end[2] - 1, 0})
  end, { silent = true }),
  -- Multi line shift down
  vim.keymap.set('v', '<C-j>', function ()
  local cur_start = vim.fn.getpos("v")
  local cur_end = vim.fn.getpos(".")

  local move_cmd = cur_start[2] .. ',' .. cur_end[2] .. 'm' .. cur_end[2] + 1
  vim.cmd(':' .. move_cmd)

  vim.cmd([[normal! :noh]])
  vim.api.nvim_win_set_cursor(0, {cur_start[2] +1, 0})
  vim.cmd([[normal V]])
  vim.api.nvim_win_set_cursor(0, {cur_end[2] +1, 0})
  end, { silent = true})
}
