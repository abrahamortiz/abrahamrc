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

require('mini.clue').setup {
  triggers = {
    { mode = 'n', keys = '<Leader>' },
    { mode = 'x', keys = '<Leader>' },
    { mode = 'n', keys = 'g' },
    { mode = 'x', keys = 'g' },
    { mode = 'n', keys = "'" },
    { mode = 'n', keys = '`' },
    { mode = 'x', keys = "'" },
    { mode = 'x', keys = '`' },
    { mode = 'n', keys = '"' },
    { mode = 'x', keys = '"' },
    { mode = 'i', keys = '<C-r>' },
    { mode = 'c', keys = '<C-r>' },
  },
  clues = {
    { mode = 'n', keys = '<Leader>s', desc = '[S]earch' },
    { mode = 'n', keys = '<Leader>t', desc = '[T]oggle' },
    { mode = 'n', keys = '<Leader>h', desc = 'Git [H]unk' },
    { mode = 'n', keys = '<Leader>p', desc = '[P]lugins' },
    { mode = 'n', keys = 'gr', desc = 'LSP Actions' },
  },
}

MiniClue.gen_clues.builtin_completion()
MiniClue.gen_clues.builtin_completion()
MiniClue.gen_clues.g()
MiniClue.gen_clues.marks()
MiniClue.gen_clues.registers()
MiniClue.gen_clues.windows()
MiniClue.gen_clues.z()

require('mini.diff').setup {
  view = {
    style = 'sign',
    signs = { add = '+', change = '~', delete = '_' },
  },
}

require('mini.notify').setup {
  window = { config = { border = 'rounded' } },
}

local statusline = require 'mini.statusline'
statusline.setup { use_icons = vim.g.have_nerd_font }

---@diagnostic disable-next-line: duplicate-set-field
statusline.section_location = function() return '%2l:%-2v' end

-- Git diff keymaps
vim.keymap.set('n', ']c', function() MiniDiff.goto_hunk 'next' end, { desc = 'Next git change' })
vim.keymap.set('n', '[c', function() MiniDiff.goto_hunk 'prev' end, { desc = 'Previous git change' })
