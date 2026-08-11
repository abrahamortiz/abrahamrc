vim.pack.add { 'https://github.com/shatur/neovim-ayu' }

require('ayu').setup {
  overrides = function()
    return {
      Normal = { bg = 'None' },
    }
  end,
}

vim.cmd.colorscheme 'ayu-light'
