vim.pack.add { 'https://github.com/goolord/alpha-nvim' }

local alpha = require 'alpha'
local dashboard = require 'alpha.themes.dashboard'

local function footer()
  local version = vim.version()
  local nvim_version_info = '  v' .. version.major .. '.' .. version.minor .. '.' .. version.patch

  return nvim_version_info
end

local logo = [[
  ███╗   ██╗███████╗ ██████╗ ██╗   ██╗██╗███╗   ███╗
  ████╗  ██║██╔════╝██╔═══██╗██║   ██║██║████╗ ████║
  ██╔██╗ ██║█████╗  ██║   ██║██║   ██║██║██╔████╔██║
  ██║╚██╗██║██╔══╝  ██║   ██║╚██╗ ██╔╝██║██║╚██╔╝██║
  ██║ ╚████║███████╗╚██████╔╝ ╚████╔╝ ██║██║ ╚═╝ ██║
  ╚═╝  ╚═══╝╚══════╝ ╚═════╝   ╚═══╝  ╚═╝╚═╝     ╚═╝
]]

dashboard.section.header.val = vim.split(logo, '\n')
dashboard.section.header.opts.hl = 'String'

dashboard.section.buttons.val = {
  dashboard.button('<Leader>sf', '  Search File'),
  dashboard.button('<Leader>sg', '  Search by Grep'),
  dashboard.button('<Leader>pu', '  Update Plugins'),
  dashboard.button('q', '  Quit', ':qa<cr>'),
}

dashboard.section.footer.val = footer()
dashboard.section.footer.opts.hl = 'Constant'

alpha.setup(dashboard.opts)

vim.cmd [[ autocmd FileType alpha setlocal nofoldenable ]]
