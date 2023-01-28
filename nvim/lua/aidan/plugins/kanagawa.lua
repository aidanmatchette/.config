local status, kanagawa = pcall(require, 'kanagawa')
if (not status) then
    print("kanagawa is not working")
    return
end

kanagawa.setup({
    commentStyle = { italic = true },
    keywordStyle = { italic = true},
    statementStyle = { bold = true },
    variablebuiltinStyle = { italic = true},
    specialReturn = true,       -- special highlight for the return keyword
    specialException = true,    -- special highlight for exception handling keywords
    transparent = true,        -- do not set background color
    globalStatus = false,       -- adjust window separators highlight for laststatus=3
    terminalColors = true,      -- define vim.g.terminal_color_{0,17}
    theme = "default"           -- Load "default" theme or the experimental "light" theme
})
