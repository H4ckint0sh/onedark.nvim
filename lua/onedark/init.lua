local util = require("onedark.utils")
local theme = require("onedark.theme")

local M = {}

function M.load()
  util.load(theme.setup())
end

-- keep for backward compatibility
M.colorscheme = M.load

return M
