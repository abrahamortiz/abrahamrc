vim.pack.add { 'https://github.com/shatur/neovim-ayu', { src = 'https://github.com/catppuccin/nvim', name = 'catppuccin' } }

require('ayu').setup {
  overrides = function()
    return {
      Normal = { bg = 'None' },
    }
  end,
}

require('catppuccin').setup {
  transparent_background = true,
}

vim.cmd.colorscheme 'catppuccin-frappe'
