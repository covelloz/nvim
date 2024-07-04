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
    local bufnr = vim.api.nvim_get_current_buf()

    if curr_file ~= '' and
      vim.fn.getbufvar(bufnr, "&modifiable") == 1
    then
      vim.cmd(':w') -- save the file
    end
  end
})

