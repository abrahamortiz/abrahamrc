vim.pack.add { 'https://github.com/nvim-mini/mini.nvim' }

if vim.g.have_nerd_font then
  require('mini.icons').setup {}
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

require('mini.notify').setup {
  window = { config = { border = 'rounded' } },
}

require('mini.bufremove').setup()

require('mini.statusline').setup {
  content = {
    active = function()
      local mode, mode_hl = MiniStatusline.section_mode { trunc_width = 120 }
      local git = MiniStatusline.section_git { trunc_width = 40 }
      local diff = MiniStatusline.section_diff { trunc_width = 75 }
      local diagnostics = MiniStatusline.section_diagnostics { trunc_width = 75 }
      local filename = MiniStatusline.section_filename { trunc_width = math.huge }
      local fileinfo = MiniStatusline.section_fileinfo { trunc_width = math.huge }
      local search = MiniStatusline.section_searchcount { trunc_width = 75 }
      local location = MiniStatusline.section_location { trunc_width = math.huge }

      return MiniStatusline.combine_groups {
        { hl = mode_hl, strings = { mode } },
        { hl = 'MiniStatuslineDevinfo', strings = { git, diff, diagnostics } },
        '%<', -- Mark general truncate point
        { hl = 'MiniStatuslineFilename', strings = { filename } },
        '%=', -- End left alignment
        { hl = 'MiniStatuslineFileinfo', strings = { fileinfo } },
        { hl = mode_hl, strings = { search, location } },
      }
    end,
    inactive = nil,
  },
  use_icons = vim.g.have_nerd_font,
}

-- Keymaps for mini modules
vim.keymap.set('n', '<leader>bd', '<CMD>lua MiniBufremove.delete()<CR>', { desc = '[B]uffer [D]elete' })
vim.keymap.set('n', '<leader>bw', '<CMD>lua MiniBufremove.wipeout()<CR>', { desc = '[B]uffer [W]ipeout' })
