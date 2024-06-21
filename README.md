# nvim

This repository should be cloned into: `~/.config/nvim`

## Package Management

current: [vim-plug](https://github.com/junegunn/vim-plug)

## CLI and Build Tool Requirements
- [sharkdp/fd](https://github.com/sharkdp/fd) (nvim-telescope)
- [ripgrep](https://github.com/BurntSushi/ripgrep) (nvim-telescope)
- build tools & libs
  - cmake, make, gcc, libstdc++ (nvim-telescope, nvim-treesitter)
- terminal tools
  - tar, curl, git (nvim-treesitter)

## TODO
- [x] Plugin management, configuration, and file organization
- [x] File navigation & search
  - [x] [nvim-tree](https://github.com/nvim-tree/nvim-tree.lua)
  - [x] [nvim-telescope](https://github.com/nvim-telescope/telescope.nvim)
- [x] Theme
  - [x] [onedark](https://github.com/navarasu/onedark.nvim)
- [ ] Syntax Highlighting & LSP 
  - [x] [nvim-treesitter](https://github.com/nvim-treesitter/nvim-treesitter)
  - [x] [neovim-lsp](https://github.com/neovim/nvim-lspconfig)
  - [x] [angularls](https://www.andersevenrud.net/neovim.github.io/lsp/configurations/angularls/)
  - [x] [kotlin](https://www.andersevenrud.net/neovim.github.io/lsp/configurations/kotlin_language_server/)
  - [ ] [java](https://www.andersevenrud.net/neovim.github.io/lsp/configurations/java_language_server/)
- [ ] Tabbed buffers
  - [ ] [bufferline](https://github.com/akinsho/bufferline.nvim)
- [ ] Code folding
  - [ ] [nvim-ufo](https://github.com/kevinhwang91/nvim-ufo?tab=readme-ov-file)
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

