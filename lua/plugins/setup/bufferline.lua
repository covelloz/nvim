local keymap = vim.keymap.set

keymap('n', '<Tab>', ':BufferLineCycleNext<CR>', { noremap = true, silent = true, desc = 'go to next buffer' })
keymap('n', '<S-Tab>', ':BufferLineCyclePrev<CR>', { noremap = true, silent = true, desc = 'go to previous buffer' })
keymap(
	'n',
	'<leader>bh',
	':BufferLineMovePrev<CR>',
	{ noremap = true, silent = true, desc = 'move current buffer left' }
)
keymap(
	'n',
	'<leader>bl',
	':BufferLineMoveNext<CR>',
	{ noremap = true, silent = true, desc = 'move current buffer right' }
)
keymap('n', '<leader>bp', ':BufferLineTogglePin<CR>', { noremap = true, silent = true, desc = 'toggle buffer pin' })

keymap(
	'n',
	'<leader>bqq',
	':bd<CR>:bp<CR>',
	{ noremap = true, silent = true, desc = 'close current buffer & go to previous' }
)
keymap(
	'n',
	'<leader>bqr',
	':BufferLineCloseRight<CR>',
	{ noremap = true, silent = true, desc = 'close all buffers to the right' }
)
keymap(
	'n',
	'<leader>bql',
	':BufferLineCloseLeft<CR>',
	{ noremap = true, silent = true, desc = 'close all buffers to the left' }
)
keymap(
	'n',
	'<leader>bqo',
	':BufferLineCloseOthers<CR>',
	{ noremap = true, silent = true, desc = 'close all except current buffer' }
)
keymap('n', '<leader>bQ', ':bufdo bdelete<CR>', { noremap = true, silent = true, desc = 'close all buffers' })

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
