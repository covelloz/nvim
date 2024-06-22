local nvim_lsp = require('lspconfig')

-- language servers
local default_config = require('setup.lsp.default')
local rust_config = require('setup.lsp.rust')

local lsp_servers = {
  {
    name = 'lua_ls',
    config = default_config
  },
  {
    name = 'tsserver',
    config = default_config
  },
  {
    name = 'angularls',
    config = default_config
  },
  {
    name = 'rust_analyzer',
    config = {
      on_attach = default_config['on_attach'],
      settings = rust_config
    }
  },
}

for _, server in ipairs(lsp_servers) do
  nvim_lsp[server.name].setup(server.config)
end

