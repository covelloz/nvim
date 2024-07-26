local vim = vim
local keymap = vim.keymap.set

local builtin = require('telescope.builtin')
local actions = require("telescope.actions")
local action_state = require('telescope.actions.state')
local finders = require "telescope.finders"
local pickers = require('telescope.pickers')
local utils = require('telescope.utils')
local conf = require('telescope.config')

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

local function entry_maker(entry)
  local value = entry.value or ""
  local filename = entry.filename or ""
  local col = entry.col or 0
  local lnum = entry.lnum or 0
  local text = entry.text or ""
  local index = entry.index or 0

  local display
  display = utils.transform_path({path_display = { 'truncate' }}, filename)
  display = utils.transform_devicons(display, display, false)

  return {
    value = value,
    filename = filename,
    display = display,
    ordinal = value,
    col = col,
    lnum = lnum,
    text = text,
    index = index,
  }
end

local function filter_test(prompt_bufnr)
  local current_picker = action_state.get_current_picker(prompt_bufnr)
  local manager = current_picker.manager

  -- filter out results with word
  local filtered_results = {}
  for entry in manager:iter() do
    if not entry.value:find("Test") then
      print(vim.inspect(entry))
      table.insert(filtered_results, entry)
    end
  end

  pickers.new({}, {
    prompt_title = "Results (without 'Test')",
    finder = finders.new_table {
      results = filtered_results,
      entry_maker = entry_maker,
    },
    sorter = conf.values.generic_sorter({}),
    previewer = current_picker.previewer,
  }):find()
end

require('telescope').setup({
	defaults = {
    mappings = {
      i = {
        ["<C-s>"] = actions.send_selected_to_qflist + actions.open_qflist,
        ["<C-F>"] = filter_test,
      },
      n = {
        ["<C-s>"] = actions.send_selected_to_qflist + actions.open_qflist,
        ["<C-F>"] = filter_test,
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
