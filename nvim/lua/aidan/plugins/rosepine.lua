local status, rosepine = pcall(require, 'rose-pine')
if (not status) then
    print("rose pine is not working")
    return
end

rosepine.setup({
	dark_variant = 'main',
	bold_vert_split = false,
	dim_nc_background = false,
	disable_background = true,
	disable_float_background = true,
	disable_italics = false,
})
