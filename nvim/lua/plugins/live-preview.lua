vim.pack.add { 'https://github.com/brianhuster/live-preview.nvim' }

require('livepreview.config').set()

vim.keymap.set('n', '<leader>tl', '<CMD>LivePreview start<CR>', { desc = 'Toggle `LivePreview`' })
