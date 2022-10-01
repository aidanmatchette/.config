local status, autotag = pcall(require, 'nvim-ts-autotag')
if (not status) then end
autotag.setup {}
