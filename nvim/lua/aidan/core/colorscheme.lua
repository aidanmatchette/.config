function ColorMyPencils(color)
    color = color or "rose-pine"
    require("aidan.plugins.rosepine")
    --require("aidan.plugins.catppuccin")
    vim.cmd.colorscheme(color)

end

ColorMyPencils("rose-pine")
--
-- -- local colorscheme = "catppuccin"
-- local colorscheme = "rose-pine"
--
-- if colorscheme == "kanagawa" then
-- end
--
-- local status, _ = pcall(vim.cmd, "colorscheme " .. colorscheme)
-- if not status then
-- 	vim.notify("Colorscheme " .. colorscheme .. " not found!")
-- 	return
-- end
