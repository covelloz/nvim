local opt = vim.o
local keymap = vim.keymap.set

opt.timeout = true
opt.timeoutlen = 300

local wk = require('which-key')

keymap('n', '<leader>wk', ':WhichKey<CR>', { desc = 'WhichKey open' })

-- document custom mappings
wk.setup({})

