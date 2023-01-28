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

-- Fast Insert
keymap("i", "jk", "<ESC>", opts)
keymap("i", "kj", "<ESC>", opts)

-- Normal --
keymap("n", "x", '"_x', opts)
-- Better window navigation
keymap("n", "<C-h>", "<C-w>h", opts)
keymap("n", "<C-j>", "<C-w>j", opts)
keymap("n", "<C-k>", "<C-w>k", opts)
keymap("n", "<C-l>", "<C-w>l", opts)

-- Resize with arrows
keymap("n", "<S-Up>", ":resize -2<CR>", opts)
keymap("n", "<S-Down>", ":resize +2<CR>", opts)
keymap("n", "<S-Left>", ":vertical resize -2<CR>", opts)
keymap("n", "<S-Right>", ":vertical resize +2<CR>", opts)

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
