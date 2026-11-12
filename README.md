# abrahamrc

Personal configuration files for Neovim, tmux, Ghostty and a few other tools.

## Structure

```
├── nvim/          # Neovim configuration (init.lua, config/ and plugins/)
├── tmux/          # tmux configuration
├── ghostty/       # Ghostty terminal configuration
├── opencode/      # opencode configuration (model and TUI theme)
├── workmux/       # workmux configuration (git worktree sessions)
├── tinycast/      # tinycast launcher settings
└── LICENSE
```

## Neovim

A Neovim setup using the native `vim.pack` plugin manager (Neovim 0.12+). See
[nvim/README.md](nvim/README.md) for the full plugin list.

- **Editing**: mini.ai, mini.pairs, LuaSnip, friendly-snippets
- **Completion**: blink.cmp
- **LSP**: nvim-lspconfig, mason, mason-lspconfig, mason-tool-installer
- **Formatting and linting**: conform, nvim-lint
- **Search**: fzf-lua (files, grep, LSP pickers and `vim.ui.select`)
- **Treesitter**: nvim-treesitter (`main` branch), auto-installs parsers for
  detected filetypes
- **Git**: gitsigns, diffview
- **UI**: kanagawa (colorscheme), alpha (dashboard), mini.statusline,
  mini.clue, mini.notify, mini.icons, aerial (symbol outline), zen-mode
- **Files and buffers**: oil, mini.bufremove
- **Markdown**: render-markdown, live-preview

## tmux

tmux config using the TPM plugin manager.

- **Plugins**: tmux-sensible, tmux-resurrect
- **Status bar**: at the top, shows the session name and the window list
- **Key bindings**: `C-a` prefix, vi-style pane navigation (`h`/`j`/`k`/`l`)
  and resizing (`H`/`J`/`K`/`L`), `-`/`|` splits, `r` reloads the config

## Ghostty

Kanagawa theme (Lotus for light mode, Wave for dark mode) with the
MesloLGS Nerd Font Mono font.

## Installation

Clone the repository and symlink the configs from the repo root:

```bash
ln -sf "$PWD/nvim" ~/.config/nvim
ln -sf "$PWD/tmux/tmux.conf" ~/.tmux.conf
ln -sf "$PWD/ghostty" ~/.config/ghostty
```

Neovim fetches plugins on first launch. For tmux, install TPM and press
`C-a I` to fetch plugins.
