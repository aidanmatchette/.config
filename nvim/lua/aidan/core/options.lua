local opt = vim.opt
opt.nu = true
opt.relativenumber = true

opt.errorbells = false

opt.tabstop = 4
opt.softtabstop = 4
opt.shiftwidth = 4
opt.expandtab = true
opt.smartindent = true

opt.splitbelow = true
opt.splitright = true
opt.wrap = false

opt.swapfile = false
opt.backup = false
opt.undodir = os.getenv("HOME") .. "/.vim/undodir"
opt.undofile = true

opt.hlsearch = false
opt.ignorecase = true
opt.incsearch = true

--cursor line
opt.cursorline = true

opt.termguicolors = true
opt.signcolumn = "yes"
opt.background = "dark"

--backspace
opt.backspace = "indent,eol,start"

--clipboard
opt.clipboard:append("unnamedplus")

--cmdheight
opt.cmdheight = 1

opt.updatetime = 50


-- Highlight on Yank
local augroup = vim.api.nvim_create_augroup

local autocmd = vim.api.nvim_create_autocmd
local yank_group = augroup('HighlightYank', {})

function R(name)
    require("plenary.reload").reload_module(name)
end

autocmd('TextYankPost', {
    group = yank_group,
    pattern = '*',
    callback = function()
        vim.highlight.on_yank({
            higroup = 'IncSearch',
            timeout = 40,
        })
    end,
})
