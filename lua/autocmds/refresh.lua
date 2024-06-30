local vim = vim
local augroup = vim.api.nvim_create_augroup
local autocmd = vim.api.nvim_create_autocmd

-- automatically refresh files on enter 
augroup('refresh', { clear = true })
autocmd({'BufEnter', 'WinEnter'}, {
  group = 'refresh',
  pattern = '*',
  callback = function()
    local curr_file = vim.fn.expand('%:p')
    local bufname = vim.api.nvim_buf_get_name(0)

    if curr_file ~= '' and not string.find(bufname, 'NvimTree') then
      vim.cmd(':e %') -- force reload the file
    end
  end
})

