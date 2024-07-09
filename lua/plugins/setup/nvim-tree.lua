local vim = vim
local keymap = vim.keymap.set

vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

require('nvim-tree').setup({
	sort = {
		sorter = 'case_sensitive',
	},
	view = {
		width = 40,
	},
	renderer = {
		group_empty = true,
	},
	filters = {
		dotfiles = true,
	},
})

keymap('n', '<C-n>', '<cmd>NvimTreeToggle<CR>', { desc = 'nvim-tree toggle window' })
keymap('n', '<leader>tf', '<cmd>NvimTreeFindFile<CR>', { desc = 'nvim-tree go to file' })
keymap('n', '<leader>tc', '<cmd>NvimTreeCollapse<CR>', { desc = 'nvim-tree collapse' })
-- keymap('n', '<leader>tg', '<cmd>NvimTreeFocus<CR>', { desc = 'nvim-tree toggle window' })
