# abrahamrc

Personal configuration files for Neovim and tmux.

## Structure

```
├── nvim/          # Neovim configuration (init.lua + plugin specs)
├── tmux/          # tmux configuration
└── LICENSE
```

## Neovim

A Neovim setup using the native `vim.pack` plugin manager, configured for
editing, LSP and a polished status bar.

- **Editing**: mini.ai, mini.surround, nvim-autopairs, Luasnip, guess-indent
- **LSP**: mason, mason-lspconfig, blink.cmp, conform (formatting), nvim-lint
- **Search**: Telescope with fzf, ui-select extensions
- **Treesitter**: auto-installs parsers for detected filetypes
- **Plugins**: gitsigns, which-key, todo-comments, oil, markview, claudecode,
  fidget, mini.icons
- **Status bar**: custom statusline with icons (requires a Nerd Font)

## tmux

tmux config using the TPM plugin manager.

- **Plugins**: tmux-sensible, tmux-resurrect, tmux-cpu, tmux-battery
- **Status bar**: session name, color-coded CPU/BAT usage, clock and date
- **Key bindings**: `C-a` prefix, vi-style pane navigation/resizing, `-`/`|` splits
- `g` opens lazygit in a popup following the current pane's cwd

## Installation

Clone the repository and symlink the configs from the repo root:

```bash
ln -sf "$PWD/nvim" ~/.config/nvim
ln -sf "$PWD/tmux/tmux.conf" ~/.tmux.conf
```

Neovim will fetch plugins on first launch. For tmux, install TPM and press
`C-a I` to fetch plugins.
