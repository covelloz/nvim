local vim = vim
local Plug = vim.fn['plug#']

vim.call('plug#begin')
  -- files::
  -- nvim-tree
  Plug('nvim-tree/nvim-web-devicons')
  Plug('nvim-tree/nvim-tree.lua')
  -- buffer tabs
  Plug('akinsho/bufferline.nvim', { ['tag'] = 'v4.6.1' })
  -- nvim-telescope 
  Plug('nvim-lua/plenary.nvim')
  Plug('nvim-telescope/telescope.nvim', { ['tag'] = '0.1.8' })
  Plug('nvim-telescope/telescope-fzf-native.nvim', { ['do'] = 'cmake -S. -Bbuild -DCMAKE_BUILD_TYPE=Release && cmake --build build --config Release && cmake --install build --prefix build' })
  -- lsp::
  -- nvim-treesitter
  Plug('nvim-treesitter/nvim-treesitter', { ['do'] = ':TSUpdate' })
  -- nvim-lspconfig
  Plug('neovim/nvim-lspconfig')
  Plug('udalov/kotlin-vim')
  -- auto-complete
  Plug('hrsh7th/cmp-nvim-lsp')
  Plug('hrsh7th/cmp-buffer')
  Plug('hrsh7th/cmp-path')
  Plug('hrsh7th/cmp-cmdline')
  Plug('hrsh7th/nvim-cmp')
  -- ui::
  -- onedark theme
  Plug('navarasu/onedark.nvim')
  -- terminal
  Plug('akinsho/toggleterm.nvim', { ['tag'] = 'v2.11.0'})
  -- code folding
  Plug('kevinhwang91/promise-async')
  Plug('kevinhwang91/nvim-ufo')
  Plug('lukas-reineke/indent-blankline.nvim')
  -- whitespace
  Plug('johnfrankmorgan/whitespace.nvim')
  -- gutter column 
  Plug('luukvbaal/statuscol.nvim')
  Plug('lewis6991/gitsigns.nvim')
  -- keymap display
  Plug('folke/which-key.nvim')
vim.call('plug#end')

