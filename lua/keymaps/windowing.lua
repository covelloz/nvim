local keymap = vim.keymap.set

keymap('n', '<C-h>', '<C-w>h', { noremap = true, silent = true, desc = 'switch window left' })
keymap('n', '<C-l>', '<C-w>l', { noremap = true, silent = true, desc = 'switch window right' })
keymap('n', '<C-j>', '<C-w>j', { noremap = true, silent = true, desc = 'switch window down' })
keymap('n', '<C-k>', '<C-w>k', { noremap = true, silent = true, desc = 'switch window up' })

keymap('n', '<leader>sv', '<C-w>H', { noremap = true, silent = true, desc = 'switch to vertical split' })
keymap('n', '<leader>sh', '<C-w>K', { noremap = true, silent = true, desc = 'switch to horizontal split' })

