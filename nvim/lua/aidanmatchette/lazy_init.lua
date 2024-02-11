local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

require("lazy").setup({
    spec = "aidanmatchette.lazy",
    change_detection = { notify = false }
})
--[[
require("lazy").setup({

    'nvim-telescope/telescope.nvim',
    'nvim-lua/plenary.nvim',
    {
        "rose-pine/neovim",
        name = "rose-pine"
        config = function()
            vim.cmd("colorscheme rose-pine")
        end
    },

    "catppuccin/nvim",
    "folke/trouble.nvim",
    {
        "nvim-treesitter/nvim-treesitter"
        build = ":TSUpdate",
    },

	use({
        "theprimeagen/harpoon",
        branch = "harpoon2",
        dependencies = {"nvim-lua/plenary.nvim"}

    })
	use("theprimeagen/refactoring.nvim")
	use("mbbill/undotree")
	use("tpope/vim-fugitive")
	use("nvim-treesitter/nvim-treesitter-context");
    use("windwp/nvim-autopairs") -- autoclose parens, brackets, quotes, etc...

	use {
		'VonHeikemen/lsp-zero.nvim',
		branch = 'v1.x',
		requires = {
			-- LSP Support
			{'neovim/nvim-lspconfig'},
			{'williamboman/mason.nvim'},
			{'williamboman/mason-lspconfig.nvim'},

			-- Autocompletion
			{'hrsh7th/nvim-cmp'},
			{'hrsh7th/cmp-buffer'},
			{'hrsh7th/cmp-path'},
			{'saadparwaiz1/cmp_luasnip'},
			{'hrsh7th/cmp-nvim-lsp'},
			{'hrsh7th/cmp-nvim-lua'},

			-- Snippets
			{'L3MON4D3/LuaSnip'},
			{'rafamadriz/friendly-snippets'},
		}
	}

	use("github/copilot.vim")
}, {})
--]]
