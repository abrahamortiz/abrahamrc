vim.pack.add { 'https://github.com/OXY2DEV/markview.nvim' }

require('markview').setup {
  preview = {
    icon_provider = 'mini',
  },
}

vim.keymap.set('n', '<leader>tm', '<CMD>Markview Toggle<CR>', { desc = 'Toggle `markview`' })
