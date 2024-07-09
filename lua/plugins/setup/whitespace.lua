local keymap = vim.keymap.set

keymap('n', '<Leader>wt', require('whitespace-nvim').trim, { desc = 'trim whitespace' })

require('whitespace-nvim').setup({
	-- `highlight` configures which highlight is used to display trailing whitespace
	highlight = 'DiffDelete',
	-- `ignored_filetypes` configures which filetypes to ignore when displaying trailing whitespace
	ignored_filetypes = { 'TelescopePrompt', 'Trouble', 'help', 'NvimTree' },
	-- `ignore_terminal` configures whether to ignore terminal buffers
	ignore_terminal = true,
	-- `return_cursor` configures if cursor should return to previous position after trimming whitespace
	return_cursor = true,
})
