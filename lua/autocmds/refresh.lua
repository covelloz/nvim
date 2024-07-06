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
    local bufnr = vim.api.nvim_get_current_buf()

    if curr_file ~= '' and
      vim.fn.getbufvar(bufnr, "&modifiable") == 1 and
      not curr_file:find("://", 1, true)
    then
      vim.cmd(':e %') -- force reload the file
    end
  end
})

