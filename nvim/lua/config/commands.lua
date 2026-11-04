-- Tree command
vim.api.nvim_create_user_command('Tree', function(opts)
  local level = opts.args ~= '' and opts.args or '2'
  vim.cmd('botright split | terminal eza --tree --level=' .. level .. ' --icons --git-ignore --color=always')
end, { nargs = '?' })
