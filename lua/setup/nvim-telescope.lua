local keymap = vim.keymap.set

local builtin = require('telescope.builtin')
keymap('n', '<leader>ff', builtin.find_files, { desc = 'find files' })
keymap('n', '<leader>fg', builtin.live_grep, { desc = 'find in files' })
keymap('n', '<leader>fb', builtin.buffers, { desc = 'find in buffers' })
keymap('n', '<leader>fh', builtin.help_tags, { desc = 'find tags' })

