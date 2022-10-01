vim.opt.nu = true
vim.opt.relativenumber = true

vim.opt.errorbells = false

vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true
vim.opt.smartindent = true

vim.opt.splitbelow = true
vim.opt.splitright = true
vim.opt.wrap = false

vim.opt.winblend = 5
vim.opt.wildoptions = 'pum'
vim.opt.pumblend = 10
--vim.opt.background = "dark"

vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.undodir = os.getenv("HOME") .. "/.vim/undodir"
vim.opt.undofile = true

vim.opt.hlsearch = false
vim.opt.incsearch = true

vim.opt.termguicolors = true
vim.opt.guifont = "monospace:h17"
vim.opt.scrolloff = 8
vim.opt.signcolumn = "yes"
vim.opt.isfname:append("@-@")

-- Give more space for displaying messages.
vim.opt.cmdheight = 1

-- Having longer updatetime (default is 4000 ms = 4 s) leads to noticeable
-- delays and poor user experience.
vim.opt.updatetime = 50

-- Don't pass messages to |ins-completion-menu|.
vim.opt.shortmess:append("c")

--vim.opt.colorcolumn = "80"

vim.g.mapleader = " "

vim.opt.clipboard = "unnamedplus"
vim.opt.cursorline = true
vim.opt.fileencoding = "utf-8"
vim.opt.fillchars = vim.opt.fillchars + 'eob: '
vim.opt.fillchars:append {
    stl = ' ',
}
