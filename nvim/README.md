# abrahamrc/nvim

<a href="https://dotfyle.com/abrahamortiz/abrahamrc-nvim"><img src="https://dotfyle.com/abrahamortiz/abrahamrc-nvim/badges/plugins?style=flat" /></a>
<a href="https://dotfyle.com/abrahamortiz/abrahamrc-nvim"><img src="https://dotfyle.com/abrahamortiz/abrahamrc-nvim/badges/leaderkey?style=flat" /></a>
<a href="https://dotfyle.com/abrahamortiz/abrahamrc-nvim"><img src="https://dotfyle.com/abrahamortiz/abrahamrc-nvim/badges/plugin-manager?style=flat" /></a>

## Install Instructions

 > Install requires Neovim 0.12+ (it uses the built-in `vim.pack` plugin manager). Always review the code before installing a configuration.

Clone the repository:

```sh
git clone git@github.com:abrahamortiz/abrahamrc ~/.config/abrahamortiz/abrahamrc
```

Open Neovim with this config. Plugins are installed on first launch:

```sh
NVIM_APPNAME=abrahamortiz/abrahamrc/nvim nvim
```

Update plugins with `<leader>pu`.

## Plugins

### colorscheme

+ [rebelot/kanagawa.nvim](https://dotfyle.com/plugins/rebelot/kanagawa.nvim)
+ [catppuccin/nvim](https://dotfyle.com/plugins/catppuccin/nvim) (installed, not active)

### completion

+ [saghen/blink.cmp](https://dotfyle.com/plugins/saghen/blink.cmp)

### editing-support

+ [nvim-mini/mini.nvim](https://dotfyle.com/plugins/nvim-mini/mini.nvim) (mini.ai, mini.pairs, mini.bufremove)
+ [folke/zen-mode.nvim](https://dotfyle.com/plugins/folke/zen-mode.nvim)

### file-explorer

+ [stevearc/oil.nvim](https://dotfyle.com/plugins/stevearc/oil.nvim)

### formatting

+ [stevearc/conform.nvim](https://dotfyle.com/plugins/stevearc/conform.nvim)

### fuzzy-finder

+ [ibhagwan/fzf-lua](https://dotfyle.com/plugins/ibhagwan/fzf-lua)

### git

+ [lewis6991/gitsigns.nvim](https://dotfyle.com/plugins/lewis6991/gitsigns.nvim)
+ [sindrets/diffview.nvim](https://dotfyle.com/plugins/sindrets/diffview.nvim)

### keybinding

+ [nvim-mini/mini.nvim](https://dotfyle.com/plugins/nvim-mini/mini.nvim) (mini.clue)

### lsp

+ [neovim/nvim-lspconfig](https://dotfyle.com/plugins/neovim/nvim-lspconfig)
+ [mason-org/mason.nvim](https://dotfyle.com/plugins/mason-org/mason.nvim)
+ [mason-org/mason-lspconfig.nvim](https://dotfyle.com/plugins/mason-org/mason-lspconfig.nvim)
+ [WhoIsSethDaniel/mason-tool-installer.nvim](https://dotfyle.com/plugins/WhoIsSethDaniel/mason-tool-installer.nvim)
+ [mfussenegger/nvim-lint](https://dotfyle.com/plugins/mfussenegger/nvim-lint)

### markdown

+ [MeanderingProgrammer/render-markdown.nvim](https://dotfyle.com/plugins/MeanderingProgrammer/render-markdown.nvim)
+ [brianhuster/live-preview.nvim](https://dotfyle.com/plugins/brianhuster/live-preview.nvim)

### snippet

+ [L3MON4D3/LuaSnip](https://dotfyle.com/plugins/L3MON4D3/LuaSnip)
+ [rafamadriz/friendly-snippets](https://dotfyle.com/plugins/rafamadriz/friendly-snippets)

### startup

+ [goolord/alpha-nvim](https://dotfyle.com/plugins/goolord/alpha-nvim)

### statusline

+ [nvim-mini/mini.nvim](https://dotfyle.com/plugins/nvim-mini/mini.nvim) (mini.statusline)

### symbols

+ [stevearc/aerial.nvim](https://dotfyle.com/plugins/stevearc/aerial.nvim)

### syntax

+ [nvim-treesitter/nvim-treesitter](https://dotfyle.com/plugins/nvim-treesitter/nvim-treesitter)

### ui

+ [nvim-mini/mini.nvim](https://dotfyle.com/plugins/nvim-mini/mini.nvim) (mini.notify, mini.icons)

## Language Servers

Installed automatically with Mason:

+ gopls
+ graphql
+ lua_ls
+ terraformls
+ ts_ls

## Formatters and Linters

| Filetype | Formatter | Linter |
| --- | --- | --- |
| Lua | stylua | |
| JavaScript / TypeScript | prettier | eslint_d |
| GraphQL, JSON | prettier | |
| Markdown | markdownlint-cli2 | |
| Go | gofmt | golangcilint |
| Terraform | | tflint |
