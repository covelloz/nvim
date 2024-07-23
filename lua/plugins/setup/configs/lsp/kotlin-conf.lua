local vim = vim
local default_config = require('plugins.setup.configs.lsp.default-conf')

return vim.tbl_deep_extend("force", default_config, {
  init_options = {
    -- root_dir = "/path/to/project",
    -- storagePath = "/path/to/project"
  },
  kotlin = {
    compiler = {
      jvm = {
        target = "17" -- project JVM version
      }
    },
    externalSources = {
      autoConvertToKotlin = false
    }
  }
})
