local keymap = vim.keymap.set

local builtin = require('telescope.builtin')

keymap('n', '<leader>ff', ':lua require"telescope.builtin".find_files({ hidden = true })<CR>', { desc = 'nvim-telescope find files' })
keymap('n', '<leader>fg', builtin.live_grep, { desc = 'nvim-telescope grep in files' })
keymap('n', '<leader>fb', builtin.buffers, { desc = 'nvim-telescope find buffers' })
keymap('n', '<leader>fh', builtin.help_tags, { desc = 'nvim-telescope find tags' })

require('telescope').setup({
	defaults = {
		path_display = { 'truncate' },
    file_ignore_patterns = { 'node_modules', 'dist', '.git', '.idea' },
    pickers = {
      find_files = {
        hidden = true
      }
    }
	},
})
