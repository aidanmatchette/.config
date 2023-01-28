--local nnoremap = require("frigasack.keymap").nnoremap
M = {}
local opts = { noremap = true, silent = true }

local term_opts = { silent = true }

local keymap = vim.api.nvim_set_keymap

keymap("", "<Space>", "<Nop>", opts)
vim.g.mapleader = " "
vim.g.maplocalleader = " "


-- Terminal commands
-- ueoa is first through fourth finger left hand home row.
-- This just means I can crush, with opposite hand, the 4 terminal positions
--
-- These functions are stored in harpoon.  A plugn that I am developing
keymap("n","<leader>a","<cmd>lua require('harpoon.mark').add_file()<cr>", opts)
keymap("n", "<leader>hh", "<cmd>lua require('harpoon.ui').toggle_quick_menu()<cr>", opts)
keymap("n", "<leader>ht", "<cmd>lua require('harpoon.ui').nav_file(1)<cr>", opts)
keymap("n", "<leader>hn", "<cmd>lua require('harpoon.ui').nav_file(2)<cr>", opts)

return M
