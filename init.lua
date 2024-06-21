local vim = vim
local Plug = vim.fn['plug#']

-- plugin dependencies
vim.call('plug#begin')
  -- nvim-tree
  Plug('nvim-tree/nvim-web-devicons')
  Plug('nvim-tree/nvim-tree.lua')
  -- nvim-telescope 
  Plug('nvim-lua/plenary.nvim')
  Plug('nvim-telescope/telescope.nvim', { ['tag'] = '0.1.6' })
  Plug('nvim-telescope/telescope-fzf-native.nvim', { ['do'] = 'cmake -S. -Bbuild -DCMAKE_BUILD_TYPE=Release && cmake --build build --config Release && cmake --install build --prefix build' })
  -- nvim-treesitter
  Plug('nvim-treesitter/nvim-treesitter', { ['do'] = ':TSUpdate' })
  -- onedark theme
  Plug('navarasu/onedark.nvim')
  -- nvim-lspconfig
  Plug('neovim/nvim-lspconfig')
  Plug('udalov/kotlin-vim')
vim.call('plug#end')

-- plugin setup
require('setup.nvim-tree')
require('setup.nvim-telescope')
require('setup.nvim-treesitter')
require('setup.nvim-onedark')
require('setup.nvim-lspconfig')

-- options
require('options.general')

-- keymaps
require('keymaps.general')
require('keymaps.windowing')
