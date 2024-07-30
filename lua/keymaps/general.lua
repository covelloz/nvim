local vim = vim
local keymap = vim.keymap.set

keymap('i', 'jj', '<ESC>', { noremap = true, silent = true, desc = 'insert-mode to normal-mode' })
keymap({ 'n', 'v' }, 'y', '"+y', { noremap = true, silent = true, desc = 'yank copies to system clipboard' })
keymap('n', '<ESC><ESC>', ':nohlsearch<CR>', { noremap = true, silent = true, desc = 'clear search highlights' })
keymap({ 'n', 'i' }, '<A-k>', ':m .-2<CR>==', { noremap = true, silent = true, desc = 'move line up' })
keymap({ 'n', 'i' }, '<A-j>', ':m .1<CR>==', { noremap = true, silent = true, desc = 'move line down' })

-- remap jumplist since <Tab> is mapped for bufferline plugin (see :h CTRL-I - unlinks from Tab when both are explicitly mapped)
keymap('n', '<C-I>', '<C-I>', { noremap = true, silent = true, desc = 'next jump location' })

keymap('n', '<leader>qo', ':copen<CR>', { noremap = true, silent = true, desc = 'open quickfixlist' })
keymap('n', '<leader>qq', ':cclose<CR>', { noremap = true, silent = true, desc = 'close quickfixlist' })
keymap('n', '<leader>qc', function() vim.fn.setqflist({}, 'r') end, { noremap = true, silent = true, desc = 'clear quickfixlist' })
