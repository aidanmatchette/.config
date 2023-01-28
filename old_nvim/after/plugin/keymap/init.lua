M = {}
local opts = { noremap = true, silent = true }

local term_opts = { silent = true }

-- Shorten function name
local keymap = vim.api.nvim_set_keymap

--Remap space as leader key
keymap("", "<Space>", "<Nop>", opts)
vim.g.mapleader = " "
vim.g.maplocalleader = " "

keymap("n", "<leader>e", ":Ex<CR>", opts)
keymap("n", "<leader>u", ":UndotreeShow", opts)
keymap("v", "J", ":m '>+1<CR>gv=gv", opts)
keymap("v", "K", ":m '<-2<CR>gv=gv", opts)

keymap("n", "<leader>Y", "yg$", opts)

-- greatest remap ever
keymap("x", "<leader>p", "\"_dP", opts)

-- next greatest remap ever : asbjornHaland
keymap("n", "<leader>y", "\"+y", opts)
keymap("v", "<leader>y", "\"+y", opts)

keymap("n", "<leader>d", "\"_d", opts)
keymap("v", "<leader>d", "\"_d", opts)


-- LSP
keymap("n", "<leader>lf", "<cmd> lua vim.lsp.buf.formatting()<cr>", opts)
keymap("n", "<leader>lh", "<cmd> lua vim.lsp.buf.hover()<cr>", opts)
keymap("n", "<leader>la", "<cmd> lua vim.lsp.buf.code_action()<cr>", opts)
keymap("n", "<leader>lr", "<cmd> lua vim.lsp.buf.references()<cr>", opts)

--nnoremap("<C-k>", "<cmd>cnext<CR>zz")
--nnoremap("<C-j>", "<cmd>cprev<CR>zz")
--nnoremap("<leader>k", "<cmd>lnext<CR>zz")
--nnoremap("<leader>j", "<cmd>lprev<CR>zz")

--nnoremap("<leader>s", ":%s/\\<<C-r><C-w>\\>/<C-r><C-w>/gI<Left><Left><Left>")
--nnoremap("<leader>x", "<cmd>!chmod +x %<CR>", { silent = true })


return M
