local keymap = vim.keymap.set

local builtin = require('telescope.builtin')
keymap('n', '<leader>ff', builtin.find_files, { desc = 'nvim-telescope find files' })
keymap('n', '<leader>fg', builtin.live_grep, { desc = 'nvim-telescope grep in files' })
keymap('n', '<leader>fb', builtin.buffers, { desc = 'nvim-telescope find buffers' })
keymap('n', '<leader>fh', builtin.help_tags, { desc = 'nvim-telescope find tags' })

require('telescope').setup {
  defaults = {
    path_display = { 'truncate' }
  }
}

