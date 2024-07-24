-- plugins
require('plugins.install')
require('plugins.setup.bufferline')
require('plugins.setup.conform')
require('plugins.setup.gitsigns')
require('plugins.setup.indent-blankline')
require('plugins.setup.nvim-cmp')
require('plugins.setup.nvim-lspconfig')
require('plugins.setup.nvim-lualine')
require('plugins.setup.nvim-onedark')
require('plugins.setup.nvim-scrollbar')
require('plugins.setup.nvim-telescope')
require('plugins.setup.nvim-tree')
require('plugins.setup.nvim-treesitter')
require('plugins.setup.nvim-ufo')
require('plugins.setup.statuscol')
require('plugins.setup.toggleterm')
require('plugins.setup.which-key')
require('plugins.setup.whitespace')

-- options
require('options.general')

-- auto commands
require('autocmds.autosave')
-- require('autocmds.refresh')

-- keymaps
require('keymaps.folding')
require('keymaps.general')
require('keymaps.windowing')
