local function multiLineDown()
  local cur_start = vim.fn.getpos("v")
  local cur_end = vim.fn.getpos(".")

  local move_cmd = cur_start[2] .. ',' .. cur_end[2] .. 'm' .. cur_end[2] + 1
  vim.cmd(':' .. move_cmd)

  vim.cmd([[normal! :noh]])
  vim.api.nvim_win_set_cursor(0, {cur_start[2] +1, 0})
  vim.cmd([[normal V]])
  vim.api.nvim_win_set_cursor(0, {cur_end[2] +1, 0})
  end

local function multiLineUp()
  local cur_start = vim.fn.getpos("v")
  local cur_end = vim.fn.getpos(".")

  local move_cmd = cur_start[2] .. ',' .. cur_end[2] .. 'm' .. cur_start[2] - 2
  vim.cmd(':' .. move_cmd)

  vim.cmd([[normal! :noh]])
  vim.api.nvim_win_set_cursor(0, {cur_start[2] - 1, 0})
  vim.cmd([[normal V]])
  vim.api.nvim_win_set_cursor(0, {cur_end[2] - 1, 0})
  end

return {
  vim.keymap.set('n', '<C-k>', ':m -2<cr>',{ silent = true}),
  vim.keymap.set('n', '<C-j>', ':m +1<cr>',{ silent = true}),
  vim.keymap.set('v', '<C-k>', multiLineUp, { silent = true }),
  vim.keymap.set('v', '<C-j>', multiLineDown, { silent = true})
}
