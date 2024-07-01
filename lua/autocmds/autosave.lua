local vim = vim
local augroup = vim.api.nvim_create_augroup
local autocmd = vim.api.nvim_create_autocmd

-- automatically save files on exit
augroup('autosave', { clear = true })
autocmd({'BufLeave', 'WinLeave'}, {
  group = 'autosave',
  pattern = '*',
  callback = function()
    local curr_file = vim.fn.expand('%:p')
    local bufname = vim.api.nvim_buf_get_name(0)

    if curr_file ~= '' and
      not string.find(bufname, 'NvimTree') and
      not string.find(bufname, 'term:')
    then
      vim.cmd(':w') -- save the file
    end
  end
})

