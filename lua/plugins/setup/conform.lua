local keymap = vim.keymap.set
local conform = require('conform')

keymap('n', '<leader>lb', conform.format, { noremap = true, silent = true, desc = 'format current buffer' })
keymap('x', '<leader>ll', conform.format, { noremap = true, silent = true, desc = 'format visual selection' })
keymap('n', '<leader>lI', ':ConformInfo<CR>', { noremap = true, silent = true, desc = 'formatter get info' })

conform.setup({
	formatters_by_ft = {
		lua = { 'stylua' },
		html = { 'prettier' },
		css = { 'prettier' },
		scss = { 'prettier' },
		vue = { 'prettier' },
    typescript = { 'prettier' },
    javascript = { 'prettier' },
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
