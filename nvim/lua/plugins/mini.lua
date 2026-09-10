vim.pack.add { 'https://github.com/nvim-mini/mini.nvim' }

if vim.g.have_nerd_font then
  require('mini.icons').setup()
  MiniIcons.mock_nvim_web_devicons()
end

require('mini.ai').setup {
  mappings = {
    around_next = 'aa',
    inside_next = 'ii',
  },
  n_lines = 500,
}

require('mini.pairs').setup {}

require('mini.diff').setup {
  view = {
    style = 'sign',
    signs = { add = '+', change = '~', delete = '_' },
  },
}

local statusline = require 'mini.statusline'
statusline.setup { use_icons = vim.g.have_nerd_font }

---@diagnostic disable-next-line: duplicate-set-field
statusline.section_location = function() return '%2l:%-2v' end

-- Git diff keymaps
vim.keymap.set('n', ']c', function() MiniDiff.goto_hunk 'next' end, { desc = 'Next git change' })
vim.keymap.set('n', '[c', function() MiniDiff.goto_hunk 'prev' end, { desc = 'Previous git change' })
