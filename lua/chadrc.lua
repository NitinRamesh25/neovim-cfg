-- This file  needs to have same structure as nvconfig.lua 
-- https://github.com/NvChad/NvChad/blob/v2.5/lua/nvconfig.lua

---@type ChadrcConfig
local M = {}

M.ui = {
	theme = "onenord",

	hl_override = {
		Comment = { italic = false,  fg = "#9fdfaf"},
		["@comment"] = { italic = false, fg = "#9fdfaf" },
	},
}

return M
