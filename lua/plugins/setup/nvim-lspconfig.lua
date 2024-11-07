local nvim_lsp = require('lspconfig')

-- language servers
local default_config = require('plugins.setup.configs.lsp.default-conf')
local rust_config = require('plugins.setup.configs.lsp.rust-conf')
-- local tsserver_config = require('plugins.setup.configs.lsp.tsserver-conf')
-- local kotlin_config = require('plugins.setup.configs.lsp.kotlin-conf')

require('plugins.setup.configs.lsp.eslint-conf')

local lsp_servers = {
	{
		name = 'lua_ls',
		config = default_config,
	},
	{
		name = 'html',
		config = default_config,
	},
	{
		name = 'cssls',
		config = default_config,
	},
  {
		name = 'ts_ls',
		config = default_config,
	},
	{
		name = 'angularls',
		config = default_config,
	},
  {
    name = 'eslint',
    config = default_config
  },
	{
		name = 'volar',
		config = default_config,
	},
	{
		name = 'rust_analyzer',
		config = rust_config
  },
  {
		name = 'csharp_ls',
		config = default_config,
	},
}

for _, server in ipairs(lsp_servers) do
	nvim_lsp[server.name].setup(server.config)
end
