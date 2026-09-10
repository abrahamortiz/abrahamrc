vim.pack.add { { src = 'https://github.com/catppuccin/nvim', name = 'catppuccin' } }

require('catppuccin').setup {
  auto_integrations = true,
  transparent_background = true,
  integrations = {
    aerial = true,
    markview = true,
    mason = true,
    mini = true,
  },
}

vim.cmd.colorscheme 'catppuccin-frappe'
