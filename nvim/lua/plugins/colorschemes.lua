local function gh(repo) return 'https://github.com/' .. repo end

vim.pack.add {
  gh '/shatur/neovim-ayu',
  gh '/rebelot/kanagawa.nvim',
  gh '/maxmx03/solarized.nvim',
}

require('ayu').setup {}
require('kanagawa').setup {}
require('solarized').setup {}

vim.cmd.colorscheme 'ayu-mirage'
