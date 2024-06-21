require'nvim-treesitter.configs'.setup {
  ensure_installed = { 
    "angular",
    "bash",
    "c",
    "css",
    "html",
    "java",
    "javascript",
    "json",
    "kotlin",
    "lua",
    "markdown",
    "markdown_inline",
    "python",
    "query",
    "scss",
    "sql",
    "typescript",
    "vim",
    "vimdoc",
    "xml",
    "yaml",
  },
  sync_install = false,
  auto_install = false,
  highlight = {
    enable = true,
    -- disable = {},
  },
  additional_vim_regex_highlighting = false,
}

