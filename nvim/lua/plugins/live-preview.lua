vim.pack.add { 'https://github.com/brianhuster/live-preview.nvim' }

vim.keymap.set('n', '<leader>tl', '<CMD>LivePreview start<CR>', { desc = 'Toggle `LivePreview`' })

require('livepreview.config').set()
