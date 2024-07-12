local vim = vim
local default_config = require('plugins.setup.configs.lsp.default-conf')

return vim.tbl_deep_extend("force", default_config, {
  init_options = {
    preferences = {
      importModuleSpecifierPreference = "non-relative",
    },
  },
})
