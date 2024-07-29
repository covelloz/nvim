local vim = vim
local keymap = vim.keymap.set

local builtin = require('telescope.builtin')
local actions = require("telescope.actions")

local ts_utils = require('nvim-treesitter.ts_utils')

keymap('n', '<leader>ff', ':lua require"telescope.builtin".find_files({ hidden = true })<CR>', { desc = 'nvim-telescope find files' })
keymap('n', '<leader>fg', builtin.live_grep, { desc = 'nvim-telescope grep in files' })
keymap('n', '<leader>ft', builtin.treesitter, { desc = 'nvim-telescope find treesitter references'})
keymap('n', '<leader>fb', builtin.buffers, { desc = 'nvim-telescope find buffers' })
keymap('n', '<leader>fh', builtin.help_tags, { desc = 'nvim-telescope find tags' })

local function get_current_identifier()
-- Function to get the current identifier under the cursor using Treesitter
  local node = ts_utils.get_node_at_cursor()
  if node then
    local text = ts_utils.get_node_text(node, 0)
    return text and text[1] or ''
  end
  return ''
end

vim.keymap.set('n', '<leader>fr', function()
  local identifier = get_current_identifier()
  if identifier ~= '' then
    builtin.grep_string({ search = identifier })
  else
    print("No identifier found under cursor")
  end
end, { desc = 'nvim-telescope find references using Treesitter' })

require('telescope').setup({
	defaults = {
    mappings = {
      i = {
        ["<C-s>"] = actions.send_selected_to_qflist + actions.open_qflist,
      },
      n = {
        ["<C-s>"] = actions.send_selected_to_qflist + actions.open_qflist,
      },
    },
		path_display = { 'truncate' },
    file_ignore_patterns = { 'node_modules', 'dist', '.git', '.idea' },
    pickers = {
      find_files = {
        hidden = true
      }
    },
	},
})
