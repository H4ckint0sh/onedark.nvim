local ts = require("onedark.treesitter")
local M = {}

M.bg = "#000000"
M.fg = "#ffffff"
M.day_brightness = 0.3

---@param c  string
local function hexToRgb(c)
	c = string.lower(c)
	return { tonumber(c:sub(2, 3), 16), tonumber(c:sub(4, 5), 16), tonumber(c:sub(6, 7), 16) }
end

---@param foreground string foreground color
---@param background string background color
---@param alpha number|string number between 0 and 1. 0 results in bg, 1 results in fg
function M.blend(foreground, background, alpha)
	alpha = type(alpha) == "string" and (tonumber(alpha, 16) / 0xff) or alpha
	local bg = hexToRgb(background)
	local fg = hexToRgb(foreground)

	local blendChannel = function(i)
		local ret = (alpha * fg[i] + ((1 - alpha) * bg[i]))
		return math.floor(math.min(math.max(0, ret), 255) + 0.5)
	end

	return string.format("#%02x%02x%02x", blendChannel(1), blendChannel(2), blendChannel(3))
end

function M.darken(hex, amount, bg)
	return M.blend(hex, bg or M.bg, amount)
end

function M.lighten(hex, amount, fg)
	return M.blend(hex, fg or M.fg, amount)
end

--
---@param str string template string
---@param table table key value pairs to replace in the string
function M.template(str, table)
	return (str:gsub("($%b{})", function(w)
		return table[w:sub(3, -2)] or w
	end))
end

---@param group string
function M.highlight(group, hl)
	group = ts.get(group)
	if not group then
		return
	end
	vim.api.nvim_set_hl(0, group, hl)
end

function M.syntax(syntax)
	for group, colors in pairs(syntax) do
		M.highlight(group, colors)
	end
end

---@param colors ColorScheme
function M.terminal(colors)
	-- dark
	vim.g.terminal_color_0 = colors.black
	vim.g.terminal_color_8 = colors.terminal_black

	-- light
	vim.g.terminal_color_7 = colors.fg_dark
	vim.g.terminal_color_15 = colors.fg

	-- colors
	vim.g.terminal_color_1 = colors.red
	vim.g.terminal_color_9 = colors.red

	vim.g.terminal_color_2 = colors.green
	vim.g.terminal_color_10 = colors.green

	vim.g.terminal_color_3 = colors.yellow
	vim.g.terminal_color_11 = colors.yellow

	vim.g.terminal_color_4 = colors.blue
	vim.g.terminal_color_12 = colors.blue

	vim.g.terminal_color_5 = colors.magenta
	vim.g.terminal_color_13 = colors.magenta

	vim.g.terminal_color_6 = colors.cyan
	vim.g.terminal_color_14 = colors.cyan
end

---@param colors ColorScheme
function M.invert_colors(colors)
	if type(colors) == "string" then
		---@diagnostic disable-next-line: return-type-mismatch
		return M.invert_color(colors)
	end
	for key, value in pairs(colors) do
		colors[key] = M.invert_colors(value)
	end
end

---@param hls Highlights
function M.invert_highlights(hls)
	for _, hl in pairs(hls) do
		if hl.fg then
			hl.fg = M.invert_color(hl.fg)
		end
		if hl.bg then
			hl.bg = M.invert_color(hl.bg)
		end
		if hl.sp then
			hl.sp = M.invert_color(hl.sp)
		end
	end
end

---@param theme Theme
function M.load(theme)
	-- only needed to clear when not the default colorscheme
	if vim.g.colors_name then
		vim.cmd("hi clear")
	end

	vim.o.termguicolors = true
	vim.g.colors_name = "onedark"

	M.syntax(theme.highlights)


	vim.defer_fn(function()
		M.syntax(theme.defer)
	end, 100)
end

return M
