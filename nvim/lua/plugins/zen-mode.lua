vim.pack.add { 'https://github.com/folke/zen-mode.nvim' }

require('zen-mode').setup {}

vim.keymap.set('n', '<leader>tz', '<CMD>ZenMode<CR>', { desc = 'Toggle `ZenMode`' })
