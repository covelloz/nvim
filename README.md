# nvim

This repository should be cloned to: `~/.config/nvim`

## Package Management

current: [vim-plug](https://github.com/junegunn/vim-plug)

## CLI and Build Tool Requirements
- [sharkdp/fd](https://github.com/sharkdp/fd) (nvim-telescope)
- [ripgrep](https://github.com/BurntSushi/ripgrep) (nvim-telescope)
- build tools & libs
  - cmake, make, gcc, libstdc++ (nvim-telescope, nvim-treesitter)
- terminal tools
  - tar, curl, git (nvim-treesitter)

## Language Server Requirements
- lua-language-server
  - [luals](https://luals.github.io/#neovim-install)
- @angular/language-server
  - `npm install -g @angular/language-server`
- Typescript
  - `npm install -g typescript-language-server typescript`
- Vue
  - `npm install -g @vue/language-server @vue/typescript-plugin vue-tsc`
- Rust Analyzer
  - Install [rustup](https://rustup.rs/)
  - `rustup component add rust-analyzer`

## Plugins 
- [x] Plugin management, configuration, and file organization
- [x] File navigation & search
  - [x] [nvim-tree](https://github.com/nvim-tree/nvim-tree.lua)
  - [x] [nvim-telescope](https://github.com/nvim-telescope/telescope.nvim)
- [x] Theme
  - [x] [onedark](https://github.com/navarasu/onedark.nvim)
- [ ] Syntax Highlighting & LSP 
  - [x] [nvim-treesitter](https://github.com/nvim-treesitter/nvim-treesitter)
  - [x] [neovim-lsp](https://github.com/neovim/nvim-lspconfig)
  - [x] [angularls](https://github.com/neovim/nvim-lspconfig/blob/master/doc/server_configurations.md#angularls)
  - [x] [volar](https://github.com/neovim/nvim-lspconfig/blob/master/doc/server_configurations.md#volar)
  - [x] [rust_analyzer](https://github.com/neovim/nvim-lspconfig/blob/master/doc/server_configurations.md#rust_analyzer)
  - [ ] [java](https://github.com/neovim/nvim-lspconfig/blob/master/doc/server_configurations.md#java_language_server)
- [x] Tabbed buffers
  - [x] [bufferline](https://github.com/akinsho/bufferline.nvim)
- [x] Code folding
  - [x] [nvim-ufo](https://github.com/kevinhwang91/nvim-ufo?tab=readme-ov-file)
- [ ] Git integrations
  - [ ] [gitsigns](https://github.com/lewis6991/gitsigns.nvim)
  - [ ] [markdown-preview](https://github.com/iamcco/markdown-preview.nvim)
  - [ ] git diff & conflict resolution?
- [ ] Formatting and linters
  - [ ] whitespace auto-trimming?
- [ ] Debugging
  - [ ] [nvim-dap](https://github.com/mfussenegger/nvim-dap)
  - [ ] [nvim-dap-vscode-js](https://github.com/mxsdev/nvim-dap-vscode-js)
  - [ ] [kotlin-debug-adapter](https://github.com/fwcd/kotlin-debug-adapter)
  - [ ] [vscode-java-debug](https://github.com/Microsoft/vscode-java-debug)

