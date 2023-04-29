function ColorMyPencils(color)
    color = color or "gruvbox-material"

    vim.g.gruvbox_material_transparent_background = 1
    vim.g.gruvbox_material_foreground = "material"
    vim.g.gruvbox_material_ui_contrast = "high"
    vim.g.gruvbox_material_background = "hard"

    vim.cmd.colorscheme(color)

	vim.api.nvim_set_hl(0, "Normal", { bg = "none"})
	vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none"})
end

ColorMyPencils()
