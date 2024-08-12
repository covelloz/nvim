local keymap = vim.keymap.set

keymap('n', 'gn', ':BufferLineCycleNext<CR>', { noremap = true, silent = true, desc = 'go to next buffer' })
keymap('n', 'gp', ':BufferLineCyclePrev<CR>', { noremap = true, silent = true, desc = 'go to previous buffer' })
keymap(
	'n',
	'mh',
	':BufferLineMovePrev<CR>',
	{ noremap = true, silent = true, desc = 'move current buffer left' }
)
keymap(
	'n',
	'ml',
	':BufferLineMoveNext<CR>',
	{ noremap = true, silent = true, desc = 'move current buffer right' }
)

keymap('n', '<leader>bp', ':BufferLineTogglePin<CR>', { noremap = true, silent = true, desc = 'toggle buffer pin' })
keymap(
	'n',
	'<leader>bq',
	':bd<CR>:bp<CR>',
	{ noremap = true, silent = true, desc = 'quick close current buffer & go to previous' }
)
keymap(
	'n',
	'<leader>bcr',
	':BufferLineCloseRight<CR>',
	{ noremap = true, silent = true, desc = 'close all buffers to the right' }
)
keymap(
	'n',
	'<leader>bcl',
	':BufferLineCloseLeft<CR>',
	{ noremap = true, silent = true, desc = 'close all buffers to the left' }
)
keymap(
	'n',
	'<leader>bco',
	':BufferLineCloseOthers<CR>',
	{ noremap = true, silent = true, desc = 'close all except current buffer' }
)
keymap('n', '<leader>bQ', ':bufdo bdelete<CR>', { noremap = true, silent = true, desc = 'quick close all buffers' })

require('bufferline').setup({
	options = {
		diagnostics = 'nvim_lsp',
		offsets = {
			{
				filetype = 'NvimTree',
				text = 'File Explorer',
				highlight = 'Directory',
				separator = true,
			},
		},
	},
})
