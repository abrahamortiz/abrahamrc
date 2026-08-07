vim.pack.add { 'https://github.com/folke/which-key.nvim' }

require('which-key').setup {
  delay = 1000,
  preset = 'modern',
  icons = { mappings = vim.g.have_nerd_font },
  spec = {
    { '<leader>s', group = '[S]earch', mode = { 'n', 'v' } },
    { '<leader>t', group = '[T]oggle' },
    { '<leader>h', group = 'Git [H]unk', mode = { 'n', 'v' } },
    { 'gr', group = 'LSP Actions', mode = { 'n' } },
    { '<leader>p', group = '[P]lugins', mode = { 'n', 'v' } },
  },
}
