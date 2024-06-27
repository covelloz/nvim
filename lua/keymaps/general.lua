local keymap = vim.keymap.set

keymap('i', 'jj', '<ESC>', { noremap = true, silent = true, desc = 'insert-mode to normal-mode' })
keymap({'n', 'v'}, 'y', '"+y', { noremap = true, silent = true, desc = 'yank copies to system clipboard'})
keymap('n', '<ESC><ESC>', ':nohlsearch<CR>', { noremap = true, silent = true, desc = 'clear search highlights'} )

