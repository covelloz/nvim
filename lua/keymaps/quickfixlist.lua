local vim = vim
local keymap = vim.keymap.set

keymap('n', '<leader>qo', ':copen<CR>', { noremap = true, silent = true, desc = 'open quickfixlist' })
keymap('n', '<leader>qq', ':cclose<CR>', { noremap = true, silent = true, desc = 'close quickfixlist' })
keymap('n', '<leader>qc', function() vim.fn.setqflist({}, 'r') end, { noremap = true, silent = true, desc = 'clear quickfixlist' })

