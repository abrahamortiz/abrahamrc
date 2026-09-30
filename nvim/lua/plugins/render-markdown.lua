vim.pack.add { 'https://github.com/MeanderingProgrammer/render-markdown.nvim' }

require('render-markdown').setup {}

vim.keymap.set('n', '<leader>tm', '<CMD>RenderMarkdown toggle<CR>', { desc = 'Toggle `render-markdown`' })
