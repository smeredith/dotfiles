function _G.OpenPreviousDay()
  local current_file = vim.fn.expand('%:t')
  local current_dir = vim.fn.expand('%:p:h')
  local date_str = current_file:match('^(%d%d%d%d%-%d%d%-%d%d)%.md$')

  if not date_str then
    print("Current file name is not a valid date format (YYYY-MM-DD.md)")
    return
  end

  local year, month, day = date_str:match('(%d%d%d%d)%-(%d%d)%-(%d%d)')
  local timestamp = os.time({ year = year, month = month, day = day, hour = 0 })
  local previous_day = os.date('%Y-%m-%d', timestamp - 86400)

  local previous_file = current_dir .. '/' .. previous_day .. '.md'
  vim.cmd('edit ' .. vim.fn.fnameescape(previous_file))
end

function _G.OpenNextDay()
  local current_file = vim.fn.expand('%:t')
  local current_dir = vim.fn.expand('%:p:h')
  local date_str = current_file:match('^(%d%d%d%d%-%d%d%-%d%d)%.md$')

  if not date_str then
    print("Current file name is not a valid date format (YYYY-MM-DD.md)")
    return
  end

  local year, month, day = date_str:match('(%d%d%d%d)%-(%d%d)%-(%d%d)')
  local timestamp = os.time({ year = year, month = month, day = day, hour = 0 })
  local next_day = os.date('%Y-%m-%d', timestamp + 86400)

  local next_file = current_dir .. '/' .. next_day .. '.md'
  vim.cmd('edit ' .. vim.fn.fnameescape(next_file))
end

vim.api.nvim_create_user_command("PreviousDay", OpenPreviousDay, {})
vim.api.nvim_create_user_command("NextDay", OpenNextDay, {})

