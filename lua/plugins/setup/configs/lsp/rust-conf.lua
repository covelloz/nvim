local vim = vim
local default_config = require('plugins.setup.configs.lsp.default-conf')

-- ignore vim builtin style-guide for rust
vim.g.rust_recommended_style = 0

return vim.tbl_deep_extend("force", default_config, {
  settings = {
	  ['rust-analyzer'] = {
	  	assist = {
	  		importPrefix = 'crate',
	  	},
	  	cargo = {
	  		allFeatures = true,
	  	},
	  	procMacro = {
	  		enable = true,
	  	},
	  	checkOnSave = {
	  		enable = true,
	  	},
	  	checkOnInsert = {
	  		enable = true,
	  	},
	  	diagnostics = {
	  		enable = true,
	  		experimental = {
	  			enable = true,
	  		},
	  	},
	  },
  }
})

