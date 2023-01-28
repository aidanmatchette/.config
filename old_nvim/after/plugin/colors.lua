vim.g.gruvbox_contrast_dark = 'hard'
vim.g.catppuccin_flavour = "mocha"

local colors = require("catppuccin.palettes").get_palette()
local config = require("gruvbox").config
local palette = require("gruvbox.palette")

colors.none = "NONE"

require("catppuccin").setup({
    transparent_background = true,
    term_colors = true,
    compile = {
        enabled = false,
        path = vim.fn.stdpath("cache") .. "/catppuccin",
    },
    dim_inactive = {
        enabled = false,
        shade = "dark",
        percentage = 0.15,
    },
    styles = {
        comments = { "italic" },
        conditionals = { "italic" },
        loops = {},
        functions = {},
        keywords = {},
        strings = {},
        variables = {},
        numbers = {},
        booleans = {},
        properties = {},
        types = {},
        operators = {},
    },
    integrations = {
        cmp = true,
        neogit = true,
        telescope = true,
    },
    color_overrides = {
    },
    highlight_overrides = {
    },
    custom_highlights = {
        Comment = { fg = colors.overlay1 },
        LineNr = { fg = colors.overlay1 },
        CursorLine = { bg = colors.none },
        CursorLineNr = { fg = colors.lavender },
        DiagnosticVirtualTextError = { bg = colors.none },
        DiagnosticVirtualTextWarn = { bg = colors.none },
        DiagnosticVirtualTextInfo = { bg = colors.none },
        DiagnosticVirtualTextHint = { bg = colors.none },
    },
})
require("gruvbox").setup({
    undercurl = true,
    underline = true,
    bold = true,
    italic = true,
    strikethrough = true,
    invert_selection = false,
    invert_signs = false,
    invert_tabline = false,
    invert_intend_guides = false,
    inverse = true, -- invert background for search, diffs, statuslines and errors
    contrast = "soft", -- can be "hard", "soft" or empty string
    overrides = {
        CursorLine = { bg = colors.none },
        SignColumn = { bg = colors.none },
        CursorLineNr = { bg = colors.none },
        DiagnosticError = { bg = colors.none},
        DiagnosticSignError = { bg = colors.none},
        DiagnosticUnderlineError = { bg = colors.none},
        DiagnosticWarn = { bg = colors.none},
        DiagnosticSignWarn = { bg = colors.none},
        DiagnosticUnderlineWarn = { bg = colors.none},
        DiagnosticInfo = { bg = colors.none},
        DiagnosticSignInfo = { bg = colors.none},
        DiagnosticUnderlineInfo = { bg = colors.none},
        DiagnosticHint = { bg = colors.none},
        DiagnosticSignHint = { bg = colors.none},
        DiagnosticUnderlineHint = { bg = colors.none},
        DiagnosticVirtualTextError = { bg = colors.none },
        DiagnosticVirtualTextWarn = { bg = colors.none },
        DiagnosticVirtualTextInfo = { bg = colors.none },
        DiagnosticFloatingError = { bg = colors.none },
        DiagnosticFloatingWarn = { bg = colors.none },
        DiagnosticFloatingInfo = { bg = colors.none },
        DiagnosticFloatingHint = { bg = colors.none },
        DiagnosticVirtualTextHint = { bg = colors.none },
        Pmenu = { fg = colors.none, bg = palette.dark0_soft },
        PmenuSel = { fg = colors.bg0, bg = colors.aqua },
    },
    dim_inactive = false,
    transparent_mode = true,
})
vim.cmd [[colorscheme gruvbox]]
