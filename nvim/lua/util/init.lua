local M = {}

--- Build a GitHub URL from an `owner/repo` string.
---@param repo string
---@return string
function M.gh(repo) return 'https://github.com/' .. repo end

return M
