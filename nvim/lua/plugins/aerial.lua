vim.pack.add { 'https://github.com/stevearc/aerial.nvim' }

require('aerial').setup {
  on_attach = function(bufnr)
    vim.keymap.set('n', '[a', '<cmd>AerialPrev<CR>', { buffer = bufnr, desc = 'Previous symbol (aerial)' })
    vim.keymap.set('n', ']a', '<cmd>AerialNext<CR>', { buffer = bufnr, desc = 'Next symbol (aerial)' })
  end,
}
-- You probably also want to set a keymap to toggle aerial
vim.keymap.set('n', '<leader>a', '<cmd>AerialToggle!<CR>')
