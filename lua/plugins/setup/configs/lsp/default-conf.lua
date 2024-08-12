local vim = vim

local default_attach = function(_, bufnr)
	local function buf_set_option(...)
		vim.api.nvim_buf_set_option(bufnr, ...)
	end

	buf_set_option('omnifunc', 'v:lua.vim.lsp.omnifunc')

	-- diagnostic display
	vim.lsp.inlay_hint.enable(true, { bufnr = bufnr })
	vim.diagnostic.config({
		virtual_text = true,
		signs = true,
		underline = true,
		update_in_insert = true,
		severity_sort = false,
	})

	local signs = { Error = ' 󰅚', Warn = ' 󰀪', Hint = ' 󰌶', Info = ' ℹ' }
	for type, icon in pairs(signs) do
		local hl = 'DiagnosticSign' .. type
		vim.fn.sign_define(hl, { text = icon, texthl = hl, numhl = hl })
	end

	-- mappings
	vim.keymap.set(
		'n',
		'<leader>ga',
		vim.lsp.buf.code_action,
		{ buffer = bufnr, noremap = true, silent = true, desc = 'LSP code action' }
	)
	vim.keymap.set(
		'n',
		'gd',
		vim.lsp.buf.definition,
		{ buffer = bufnr, noremap = true, silent = true, desc = 'go to LSP definition' }
	)
	vim.keymap.set(
		'n',
		'gD',
		vim.lsp.buf.declaration,
		{ buffer = bufnr, noremap = true, silent = true, desc = 'go to LSP declaration' }
	)
	vim.keymap.set(
		'n',
		'<leader>gk',
		vim.lsp.buf.hover,
		{ buffer = bufnr, noremap = true, silent = true, desc = 'LSP hover' }
	)
	vim.keymap.set(
		'n',
		'<leader>gK',
		vim.diagnostic.open_float,
		{ buffer = bufnr, noremap = true, silent = true, desc = 'LSP open_float' }
	)
	vim.keymap.set(
		'n',
		'gi',
		vim.lsp.buf.implementation,
		{ buffer = bufnr, noremap = true, silent = true, desc = 'go to LSP implementation' }
	)
	vim.keymap.set(
		'n',
		'<leader>gs',
		vim.lsp.buf.signature_help,
		{ buffer = bufnr, noremap = true, silent = true, desc = 'LSP signature_help' }
	)
	vim.keymap.set(
		'n',
		'<leader>gt',
		vim.lsp.buf.type_definition,
		{ buffer = bufnr, noremap = true, silent = true, desc = 'LSP type_definition' }
	)
	vim.keymap.set(
		'n',
		'<leader>gR',
		vim.lsp.buf.rename,
		{ buffer = bufnr, noremap = true, silent = true, desc = 'LSP rename' }
	)
	vim.keymap.set(
		'n',
		'gr',
		vim.lsp.buf.references,
		{ buffer = bufnr, noremap = true, silent = true, desc = 'go to LSP references' }
	)
	vim.keymap.set(
		'n',
		'g[',
		vim.diagnostic.goto_prev,
		{ buffer = bufnr, noremap = true, silent = true, desc = 'go to previous LSP diagnostic' }
	)
	vim.keymap.set(
		'n',
		'g]',
		vim.diagnostic.goto_next,
		{ buffer = bufnr, noremap = true, silent = true, desc = 'go to next LSP diagnostic' }
	)
	vim.keymap.set(
		'n',
		'<leader>gq',
		vim.diagnostic.setloclist,
		{ buffer = bufnr, noremap = true, silent = true, desc = 'LSP set loc list' }
	)
	-- vim.keymap.set('n', '<space>wa', vim.lsp.buf.add_workspace_folder, { buffer = bufnr, noremap = true, silent = true, })
	-- vim.keymap.set('n', '<space>wr', vim.lsp.buf.remove_workspace_folder, { buffer = bufnr, noremap = true, silent = true, })
	-- vim.keymap.set('n', '<space>wl', function()
	--   print(vim.inspect(vim.lsp.buf.list_workspace_folders()))
	-- end, { buffer = bufnr, noremap = true, silent = true, })
end

local capabilities = require('cmp_nvim_lsp').default_capabilities()
capabilities.textDocument.completion.completionItem.snippetSupport = true
vim.env.JAVA_OPTS = '-Xmx16g'

return {
	on_attach = default_attach,
	capabilities = capabilities,
}
