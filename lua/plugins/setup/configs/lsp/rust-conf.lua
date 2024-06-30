local vim = vim

-- ignore vim builtin style-guide for rust
vim.g.rust_recommended_style = 0

return {
  ['rust-analyzer'] = {
    assist = {
      importPrefix = "crate",
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
  }
}

