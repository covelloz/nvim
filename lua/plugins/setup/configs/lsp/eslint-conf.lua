local keymap = vim.keymap.set

keymap('n', '<leader>lA', ':EsLintFixAll<CR>', { noremap = true, silent = true, desc = 'eslint fix all in buffer' })

