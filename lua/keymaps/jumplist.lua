local vim = vim
local keymap = vim.keymap.set

keymap('n', '<C-p>', '<C-i>', { noremap = true, silent = true, desc='go to next in jumplist' })

