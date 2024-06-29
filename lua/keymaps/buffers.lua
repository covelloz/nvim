local keymap = vim.keymap.set

keymap('n', '<Tab>', ':bn<CR>', { silent = true, desc = 'go to next buffer' })
keymap('n', '<S-Tab>', ':bp<CR>', { silent = true, desc = 'go to previous buffer' })
keymap('n', '<leader>bq', ':bd<CR>:bp<CR>', { silent = true, desc = 'close current buffer' })
keymap('n', '<leader>bQ', ':bufdo bdelete<CR>', { silent = true, desc = 'close all buffers' })

