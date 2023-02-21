local status, catppuccin = pcall(require, 'catppuccin')
if (not status) then
    print("catppuccin is not working")
    return
end

catppuccin.setup({
    flavour = "mocha", -- latte, frappe, macchiato, mocha
    background = { -- :h background
        dark = "mocha",
    },
    transparent_background = true,
    show_end_of_buffer = false, -- show the '~' characters after the end of buffers
})

