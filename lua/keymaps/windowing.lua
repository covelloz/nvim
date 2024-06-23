local keymap = vim.keymap.set

-- nav windows 
keymap('n', '<C-h>', '<C-w>h', { desc = 'switch window left' })
keymap('n', '<C-l>', '<C-w>l', { desc = 'switch window right' })
keymap('n', '<C-j>', '<C-w>j', { desc = 'switch window down' })
keymap('n', '<C-k>', '<C-w>k', { desc = 'switch window up' })

-- nav buffers
keymap('n', '<Tab>', ':bn<CR>', { silent = true, desc = 'go to next buffer' })
keymap('n', '<S-Tab>', ':bp<CR>', { silent = true, desc = 'go to previous buffer' })
keymap('n', '<leader>q', ':bd<CR>', { silent = true, desc = 'close current buffer' })

