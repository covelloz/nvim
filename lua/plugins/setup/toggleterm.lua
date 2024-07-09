local keymap = vim.keymap.set

keymap('n', '<leader>c', ':ToggleTerm<CR>', { noremap = true, silent = true, desc = 'open terminal' })
keymap('n', '<leader>sc', ':TermSelect<CR>', { noremap = true, silent = true, desc = 'switch to terminal (select)' })

require('toggleterm').setup({
	size = 15,
	hide_numbers = true,
	start_in_insert = false,
})
