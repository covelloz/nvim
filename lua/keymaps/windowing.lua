local keymap = vim.keymap.set

keymap('n', '<C-h>', '<C-w>h', { desc = 'switch window left' })
keymap('n', '<C-l>', '<C-w>l', { desc = 'switch window right' })
keymap('n', '<C-j>', '<C-w>j', { desc = 'switch window down' })
keymap('n', '<C-k>', '<C-w>k', { desc = 'switch window up' })

