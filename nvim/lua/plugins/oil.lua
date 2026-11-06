vim.pack.add { 'https://github.com/stevearc/oil.nvim' }

require('oil').setup {
  default_file_explorer = true,
  view_options = {
    show_hidden = true,
  },
  float = {
    padding = 2,
    max_width = 0.6,
    max_height = 0.5,
    border = nil,
    win_options = {
      winblend = 0,
    },
  },
}

-- Open parent directory in a floating window
vim.keymap.set('n', '-', require('oil').toggle_float, { desc = 'Open parent directory in a floating window' })
