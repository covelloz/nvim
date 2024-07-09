local keymap = vim.keymap.set

keymap('n', 'zz', 'za', { noremap = true, silent = true, desc = 'toggle current fold' })
keymap('n', 'zO', 'zR', { noremap = true, silent = true, desc = 'open all folds' })
keymap('n', 'zK', 'zM', { noremap = true, silent = true, desc = 'close all folds' })
