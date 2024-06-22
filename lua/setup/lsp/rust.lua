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

