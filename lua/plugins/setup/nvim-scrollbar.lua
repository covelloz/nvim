require('scrollbar').setup({
  handlers = {
    gitsigns = true
  },
  handle = {
    color = '#c4c8da',
    blend = 60,
  },
  marks = {
    Cursor = { color = '#ffff00' }
  },
  excluded_filetypes = {
    'NvimTree'
  }
})
