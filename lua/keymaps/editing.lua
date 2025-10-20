local vim = vim
local keymap = vim.keymap.set

keymap('i', 'jj', '<ESC>', { noremap = true, silent = true, desc = 'insert-mode to normal-mode' })
keymap({ 'n', 'v' }, 'y', '"+y', { noremap = true, silent = true, desc = 'yank copies to system clipboard' })

keymap({ 'n', 'i' }, '<A-k>', ':m .-2<CR>==', { noremap = true, silent = true, desc = 'move line up' })
keymap({ 'n', 'i' }, '<A-j>', ':m .1<CR>==', { noremap = true, silent = true, desc = 'move line down' })

-- Scrolling
keymap({ 'n' }, '<C-k>', '<C-y>', { noremap = true, silent = true, desc = 'scroll view up' })
keymap({ 'n' }, '<C-j>', '<C-e>', { noremap = true, silent = true, desc = 'scroll view down' })

keymap('n', '<ESC><ESC>', ':nohlsearch<CR>', { noremap = true, silent = true, desc = 'clear search highlights' })

-- Helix-like
keymap({ 'n' }, 'd', '<Del>', { noremap = true, silent = true, desc = 'delete character' })

--::goto
keymap({ 'n', 'v' }, 'ge', 'G', { noremap = true, silent = true, desc = 'go to end of file' })
keymap({ 'n', 'v' }, 'gl', '$', { noremap = true, silent = true, desc = 'go to end of line' })
keymap({ 'n', 'v' }, 'gs', '^', { noremap = true, silent = true, desc = 'go to start of line' })
keymap({ 'n', 'v' }, 'gh', '0', { noremap = true, silent = true, desc = 'go to beginning of line' })
keymap({ 'n', 'v' }, 'gt', 'H', { noremap = true, silent = true, desc = 'go to top of screen' })
keymap({ 'n', 'v' }, 'gc', 'M', { noremap = true, silent = true, desc = 'go to middle of screen' })
keymap({ 'n', 'v' }, 'gb', 'L', { noremap = true, silent = true, desc = 'go to end of screen' })

--::match-mode
keymap({ 'n', 'v' }, 'mm', '%', { noremap = true, silent = true, desc = 'go to matching' })

--::selection 
keymap({ 'n' }, 'x', 'V', { noremap = true, silent = true, desc = 'visual line selection' })
keymap({ 'v' }, ';', '<Esc>', { noremap = true, silent = true, desc = 'clear visual selections' })

