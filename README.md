# nvim

This repository should be cloned to: `~/.config/nvim`

## Package Management

current: [vim-plug](https://github.com/junegunn/vim-plug)

## CLI and Build Tool Requirements
- [sharkdp/fd](https://github.com/sharkdp/fd) (nvim-telescope)
- [ripgrep](https://github.com/BurntSushi/ripgrep) (nvim-telescope)
- [fzf](https://github.com/junegunn/fzf) (nvim-bqf)
- build tools & libs
  - cmake, make, gcc, libstdc++ (nvim-telescope, nvim-treesitter)
- other terminal tools
  - tar, curl, git

## Language Server Requirements
- lua-language-server
  - [luals](https://luals.github.io/#neovim-install)
- @angular/language-server
  - `npm install -g @angular/language-server`
- Typescript
  - `npm install -g typescript-language-server typescript`
- Vue
  - `npm install -g @vue/language-server @vue/typescript-plugin vue-tsc`
- VSCode language servers (html, cssls, eslint, etc)
  - `npm i -g vscode-langservers-extracted`
- Rust Analyzer
  - Install [rustup](https://rustup.rs/)
  - `rustup component add rust-analyzer`

## Formatter and Linter Requirements
- [stylua](https://github.com/JohnnyMorganz/StyLua)
- [prettier](https://github.com/prettier/prettier)
- [rustfmt](https://github.com/rust-lang/rustfmt)

## Plugins 
- [x] Plugin management, configuration, and file organization
- [x] File navigation & search
  - [x] [nvim-tree](https://github.com/nvim-tree/nvim-tree.lua)
  - [x] [nvim-telescope](https://github.com/nvim-telescope/telescope.nvim)
  - [x] [nvim-bqf](https://github.com/kevinhwang91/nvim-bqf)
  - [x] [which-key](https://github.com/folke/which-key.nvim)
- [x] Theme
  - [x] [onedark](https://github.com/navarasu/onedark.nvim)
- [ ] Syntax Highlighting & LSP 
  - [x] [nvim-treesitter](https://github.com/nvim-treesitter/nvim-treesitter)
  - [x] [neovim-lsp](https://github.com/neovim/nvim-lspconfig)
  - [x] [nvim-cmp](https://github.com/hrsh7th/nvim-cmp) (auto-complete)
  - [x] [html](https://github.com/neovim/nvim-lspconfig/blob/master/doc/server_configurations.md#html)
  - [x] [cssls](https://github.com/neovim/nvim-lspconfig/blob/master/doc/server_configurations.md#cssls)
  - [x] [tsserver](https://github.com/neovim/nvim-lspconfig/blob/master/doc/server_configurations.md#tsserver)
  - [x] [angularls](https://github.com/neovim/nvim-lspconfig/blob/master/doc/server_configurations.md#angularls)
  - [x] [volar](https://github.com/neovim/nvim-lspconfig/blob/master/doc/server_configurations.md#volar)
  - [x] [rust_analyzer](https://github.com/neovim/nvim-lspconfig/blob/master/doc/server_configurations.md#rust_analyzer)
- [x] Tabbed buffers
  - [x] [bufferline](https://github.com/akinsho/bufferline.nvim)
- [x] Code folding
  - [x] [nvim-ufo](https://github.com/kevinhwang91/nvim-ufo?tab=readme-ov-file)
- [x] UI Enhancements
  - [x] [indent-blankline](https://github.com/lukas-reineke/indent-blankline.nvim)
  - [x] [statuscol](https://github.com/luukvbaal/statuscol.nvim)
  - [x] [lualine](https://github.com/nvim-lualine/lualine.nvim)
  - [x] [toggleterm](https://github.com/akinsho/toggleterm.nvim)
  - [x] [nvim-scrollbar](https://github.com/petertriho/nvim-scrollbar)
- [ ] Git integrations
  - [x] [gitsigns](https://github.com/lewis6991/gitsigns.nvim)
  - [ ] [markdown-preview](https://github.com/iamcco/markdown-preview.nvim)
  - [ ] git diff & conflict resolution?
- [x] Formatting and linters
  - [x] [conform.nvim](https://github.com/stevearc/conform.nvim)
  - [x] [whitespace](https://github.com/johnfrankmorgan/whitespace.nvim)
- [ ] Debugging
  - [ ] [nvim-dap](https://github.com/mfussenegger/nvim-dap)
  - [ ] [nvim-dap-vscode-js](https://github.com/mxsdev/nvim-dap-vscode-js)
  - [ ] [kotlin-debug-adapter](https://github.com/fwcd/kotlin-debug-adapter)
  - [ ] [vscode-java-debug](https://github.com/Microsoft/vscode-java-debug)

