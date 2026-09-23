vim.pack.add { { src = 'https://github.com/catppuccin/nvim', name = 'catppuccin' } }

require('catppuccin').setup {
  auto_integrations = true,
  transparent_background = true,
  integrations = {
    fzf = true,
    gitsigns = true,
    markview = true,
    mason = true,
    mini = {
      enabled = true,
    },
  },
}

vim.cmd.colorscheme 'catppuccin-macchiato'
