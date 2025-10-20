local keymap = vim.keymap.set

keymap('n', 'ff', 'za', { noremap = true, silent = true, desc = 'toggle current fold' })
keymap('n', 'fO', 'zR', { noremap = true, silent = true, desc = 'open all folds' })
keymap('n', 'fK', 'zM', { noremap = true, silent = true, desc = 'close all folds' })
