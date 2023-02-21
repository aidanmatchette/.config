M = {}
local opts = {
    noremap = true,
    silent = true
}

local term_opts = {
    silent = true
}

-- Shorten function name
local keymap = vim.api.nvim_set_keymap
-- Remap space as leader key
keymap("", "<Space>", "<Nop>", opts)
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- Move lines in visual mode
keymap("v", "J", ":m '>+1<CR>gv=gv", opts)
keymap("v", "K", ":m '<-2<CR>gv=gv", opts)

-- Ctr D and U cursor in middle
keymap("n", "<C-d>", "<C-d>zz", opts)
keymap("n", "<C-u>", "<C-u>zz", opts)

keymap("n", "n", "nzzzv", opts)
keymap("n", "N", "Nzzzv", opts)

-- next greatest remap ever : asbjornHaland
keymap("n", "<leader>y", "\"+y", opts)
keymap("v", "<leader>y", "\"+y", opts)
keymap("n", "<leader>Y", "\"+Y", opts)

keymap("x", "<leader>p", "\"_dP", opts)
-- Fast Insert
keymap("i", "jk", "<ESC>", opts)
keymap("i", "kj", "<ESC>", opts)

-- Normal --
keymap("n", "x", '"_x', opts)

--File Tree
keymap("n", "<leader>e", ":Ex<CR>", opts)
keymap("n", "<leader>u", ":UndotreeShow<CR>", opts)

-- Telescope
keymap("n", "<leader>tf", "<cmd>Telescope find_files<cr>", opts)
keymap("n", "<leader>ts", "<cmd>Telescope live_grep<cr>", opts)
keymap("n", "<leader>tc", "<cmd>Telescope grep_string<cr>", opts)
keymap("n", "<leader>tb", "<cmd>Telescope buffers<cr>", opts)
keymap("n", "<leader>th", "<cmd>Telescope help_tags<cr>", opts)

-- Smart Quit and Save
--keymap("n", "<leader>q", "<cmd>lua require('frigasack.functions').smart_quit()<cr>", opts)
keymap("n", "<leader>w", "<cmd>w<CR>", opts)
keymap("n", "<leader>q", "<cmd>lua require('aidan.core.functions').smart_quit()<cr>", opts)
return M
