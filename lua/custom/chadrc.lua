---@type ChadrcConfig 
local M = {}
M.ui = {theme = 'catppuccin'}
--  custom is the directory; plugins is the file name
M.plugins = "custom.plugins"
M.mappings = require "custom.mappings"
return M
