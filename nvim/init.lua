--- Bootstrap ----------------------------------
-- Enable the Lua module loader for faster startup.
vim.loader.enable()

--- Configuration -----------------------------
-- Set the leader keys before anything else so keymaps use the right prefix.
require 'config.options'

require 'config.autocmds'
require 'config.commands'
require 'config.keymaps'

-- Configure the plugin manager before any plugin is added.
require 'config.pack'

-- Load every file in `lua/plugins/`.
require 'plugins'

-- The line beneath this is called `modeline`. See `:help modeline`
-- vim: ts=2 sts=2 sw=2 et
