local status, kanagawa = pcall(require, 'kanagawa')
if (not status) then
    print("kanagawa is not working")
    return
end

kanagawa.setup({
    transparent = true,        -- do not set background color
    theme = "default"           -- Load "default" theme or the experimental "light" theme
})
