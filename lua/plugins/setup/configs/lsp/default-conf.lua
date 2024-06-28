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

  local signs = { Error = " 󰅚", Warn = " 󰀪", Hint = " 󰌶", Info = " ℹ" }
  for type, icon in pairs(signs) do
    local hl = "DiagnosticSign" .. type
    vim.fn.sign_define(hl, { text = icon, texthl = hl, numhl = hl})
  end

  -- mappings
  local opts = { buffer = bufnr, noremap = true, silent = true}
  vim.keymap.set('n', 'ga', vim.lsp.buf.code_action, opts)
  vim.keymap.set('n', 'gd', vim.lsp.buf.definition, opts)
  vim.keymap.set('n', 'gD', vim.lsp.buf.declaration, opts)
  vim.keymap.set('n', 'gk', vim.lsp.buf.hover, opts)
  vim.keymap.set('n', 'gK', vim.diagnostic.open_float, opts)
  vim.keymap.set('n', 'gi', vim.lsp.buf.implementation, opts)
  vim.keymap.set('n', 'gs', vim.lsp.buf.signature_help, opts)
  vim.keymap.set('n', 'gt', vim.lsp.buf.type_definition, opts)
  vim.keymap.set('n', 'gR', vim.lsp.buf.rename, opts)
  vim.keymap.set('n', 'gr', vim.lsp.buf.references, opts)
  vim.keymap.set('n', 'g[', vim.diagnostic.goto_prev, opts)
  vim.keymap.set('n', 'g]', vim.diagnostic.goto_next, opts)
  vim.keymap.set('n', 'gq', vim.diagnostic.setloclist, opts)
  -- vim.keymap.set('n', '<space>wa', vim.lsp.buf.add_workspace_folder, opts)
  -- vim.keymap.set('n', '<space>wr', vim.lsp.buf.remove_workspace_folder, opts)
  -- vim.keymap.set('n', '<space>wl', function()
  --   print(vim.inspect(vim.lsp.buf.list_workspace_folders()))
  -- end, opts)
end

local capabilities = require('cmp_nvim_lsp').default_capabilities()

return {
  on_attach = default_attach,
  capabilities = capabilities
}

