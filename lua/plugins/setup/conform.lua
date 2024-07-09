local keymap = vim.keymap.set
local conform = require('conform')

keymap('n', '<leader>fL', conform.format, { noremap = true, silent = true, desc = 'format current buffer' })
keymap('x', '<leader>fl', conform.format, { noremap = true, silent = true, desc = 'format visual selection' })

conform.setup({
	formatters_by_ft = {
		lua = { 'stylua' },
		html = { 'prettier' },
		css = { 'prettier' },
		scss = { 'prettier' },
		vue = { 'prettier' },
		rust = { 'rustfmt' },
	},
	-- formatters = {
	--   lua_custom = {
	--     { 'stylua', command = 'stylua', args = { '--quote-style', 'ForceSingle' } }
	--   }
	-- },
	format_on_save = false,
	format_after_save = false,
})
