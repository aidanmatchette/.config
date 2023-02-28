function ColorMyPencils(color)
    color = color or "rose-pine"
    --require("aidan.plugins.rosepine")
    require("aidan.plugins.kanagawa")
    --require("aidan.plugins.catppuccin")
    vim.cmd.colorscheme(color)

end

ColorMyPencils("kanagawa")
