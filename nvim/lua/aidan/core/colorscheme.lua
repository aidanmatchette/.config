-- local colorscheme = "catppuccin"
local colorscheme = "kanagawa"

if colorscheme == "kanagawa" then
    require("aidan.plugins.kanagawa")
end

local status, _ = pcall(vim.cmd, "colorscheme " .. colorscheme)
if not status then
	vim.notify("Colorscheme " .. colorscheme .. " not found!")
	return
end
