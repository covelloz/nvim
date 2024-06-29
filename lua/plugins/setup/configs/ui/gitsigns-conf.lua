local vim = vim
local keymap = vim.keymap.set

return {
  on_attach = function(bufnr)
    local gitsigns = require('gitsigns')

    local function map(mode, l, r, opts)
      opts = opts or {}
      opts.buffer = bufnr
      keymap(mode, l, r, opts)
    end

    -- Navigation
    map('n', ']c', function()
      if vim.wo.diff then
        vim.cmd.normal({']c', bang = true})
      else
        gitsigns.nav_hunk('next')
      end
    end)

    map('n', '[c', function()
      if vim.wo.diff then
        vim.cmd.normal({'[c', bang = true})
      else
        gitsigns.nav_hunk('prev')
      end
    end)

    -- Actions
    map('n', '<leader>hs', gitsigns.stage_hunk, { desc = 'git stage hunk '})
    map('n', '<leader>hr', gitsigns.reset_hunk, { desc = 'git reset hunk' })
    map('v', '<leader>hs', function() gitsigns.stage_hunk {vim.fn.line('.'), vim.fn.line('v')} end, { desc = 'git stage hunk' })
    map('v', '<leader>hr', function() gitsigns.reset_hunk {vim.fn.line('.'), vim.fn.line('v')} end, { desc = 'git reset hunk' })
    map('n', '<leader>hS', gitsigns.stage_buffer, { desc = 'git stage entire buffer' })
    map('n', '<leader>hu', gitsigns.undo_stage_hunk, { desc = 'git undo stage hunk' })
    map('n', '<leader>hR', gitsigns.reset_buffer, { desc = 'git reset entire buffer' } )
    map('n', '<leader>hp', gitsigns.preview_hunk, { desc = 'git preview hunk' })
    map('n', '<leader>hB', function() gitsigns.blame_line{full=true} end, { desc = 'git blame line' })
    map('n', '<leader>hb', gitsigns.toggle_current_line_blame, { desc = 'git toggle blame line' })
    map('n', '<leader>hd', gitsigns.diffthis, { desc = 'git diff' })
    -- map('n', '<leader>hD', function() gitsigns.diffthis('~') end, { desc = 'git diff entire' })
    map('n', '<leader>hD', gitsigns.toggle_deleted, { desc = 'git toggle deleted' })

    -- Text object
    map({'o', 'x'}, 'ih', ':<C-U>Gitsigns select_hunk<CR>', { desc = 'git select hunk' })
  end
}
