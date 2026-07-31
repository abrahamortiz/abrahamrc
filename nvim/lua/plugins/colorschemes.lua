local function gh(repo) return 'https://github.com/' .. repo end

vim.pack.add {
  gh '/shatur/neovim-ayu',
  gh '/rebelot/kanagawa.nvim',
  gh '/maxmx03/solarized.nvim',
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

require('kanagawa').setup {
  transparent = true,
}

require('solarized').setup {
  transparent = {
    enabled = true, -- Master switch to enable transparency
    pmenu = true, -- Popup menu (e.g., autocomplete suggestions)
    normal = true, -- Main editor window background
    normalfloat = true, -- Floating windows
    neotree = true, -- Neo-tree file explorer
    nvimtree = true, -- Nvim-tree file explorer
    whichkey = true, -- Which-key popup
    telescope = true, -- Telescope fuzzy finder
    lazy = true, -- Lazy plugin manager UI
    mason = true, -- Mason manage external tooling
  },
}

vim.cmd.colorscheme 'ayu-mirage'
