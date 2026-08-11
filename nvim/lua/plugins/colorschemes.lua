local function gh(repo) return 'https://github.com/' .. repo end

vim.pack.add {
  gh '/shatur/neovim-ayu',
}

require('ayu').setup {
  overrides = function()
    return {
      Normal = { bg = 'None' },
      NormalFloat = { bg = 'None' },
      ColorColumn = { bg = 'None' },
      SignColumn = { bg = 'None' },
      Folded = { bg = 'None' },
      FoldColumn = { bg = 'None' },
      CursorLine = { bg = 'None' },
      CursorColumn = { bg = 'None' },
      VertSplit = { bg = 'None' },
    }
  end,
}

vim.cmd.colorscheme 'ayu-mirage'
