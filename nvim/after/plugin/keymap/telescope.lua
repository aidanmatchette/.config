M = {}
local opts = { noremap = true, silent = true }

local term_opts = { silent = true }

local keymap = vim.api.nvim_set_keymap

keymap("", "<Space>", "<Nop>", opts)
vim.g.mapleader = " "
vim.g.maplocalleader = " "


keymap("n", "<leader>tf", "<cmd>Telescope find_files<cr>", opts)

-- nnoremap("<C-p>", ":Telescope")
-- nnoremap("<leader>ps", function()
--     require('telescope.builtin').grep_string({ search = vim.fn.input("Grep For > ")})
-- end)
-- nnoremap("<C-p>", function()
--     require('telescope.builtin').git_files()
-- end)
-- nnoremap("<Leader>pf", function()
--     require('telescope.builtin').find_files()
-- end)

-- nnoremap("<leader>pw", function()
--     require('telescope.builtin').grep_string { search = vim.fn.expand("<cword>") }
-- end)
-- nnoremap("<leader>pb", function()
--     require('telescope.builtin').buffers()
-- end)
-- nnoremap("<leader>vh", function()
--     require('telescope.builtin').help_tags()
-- end)

-- -- TODO: Fix this immediately
-- nnoremap("<leader>vwh", function()
--     require('telescope.builtin').help_tags()
-- end)

-- nnoremap("<leader>vrc", function()
--     require('frigasack.telescope').search_dotfiles({ hidden = true })
-- end)
-- nnoremap("<leader>gc", function()
--     require('frigasack.telescope').git_branches()
-- end)
-- nnoremap("<leader>td", function()
--     require('frigasack.telescope').dev()
-- end)
return M