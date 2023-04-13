function ColorMyPencils(color)
	color = color or "rose-pine"

    require('rose-pine').setup({
        --- @usage 'auto'|'main'|'moon'|'dawn'
        variant = 'auto',
        --- @usage 'main'|'moon'|'dawn'
        dark_variant = 'main',
        bold_vert_split = false,
        dim_nc_background = false,
        disable_background = true,
        disable_float_background = true,
        disable_italics = true,

        -- Change specific vim highlight groups
        -- https://github.com/rose-pine/neovim/wiki/Recipes
    })

	vim.cmd.colorscheme(color)

	vim.api.nvim_set_hl(0, "Normal", { bg = "none"})
	vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none"})
end

ColorMyPencils()
