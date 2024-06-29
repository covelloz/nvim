local opt  = vim.o
local keymap = vim.keymap.set

opt.foldcolumn = '1' -- '0' is not bad
opt.foldlevel = 99 -- Using ufo provider need a large value, feel free to decrease the value
opt.foldlevelstart = 99
opt.foldenable = true
opt.fillchars = [[eob: ,fold: ,foldopen:,foldsep: ,foldclose:]]

-- Using ufo provider need remap `zR` and `zM`. If Neovim is 0.6.1, remap yourself
keymap('n', 'zO', require('ufo').openAllFolds, { desc = 'open all folds' })
keymap('n', 'zK', require('ufo').closeAllFolds, { desc = 'close all folds '})

require('ufo').setup({
  provider_selector = function(bufnr, filetype, buftype)
    return {'treesitter', 'indent'}
  end
})

